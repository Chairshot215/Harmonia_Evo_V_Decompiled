.class public Lcom/htc/idlescreen/base/reminderview/NoSignalView;
.super Lcom/htc/idlescreen/base/reminderview/ReminderView;
.source "NoSignalView.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "NoSignalView"


# instance fields
.field private mEventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mEventLabel2:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTlWarning:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V
    .locals 0
    .parameter "context"
    .parameter "idleScreen"
    .parameter "container"
    .parameter "scene"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/idlescreen/base/reminderview/ReminderView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    .line 42
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->initScene()V

    .line 43
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Z)Lcom/htc/idlescreen/base/reminderview/NoSignalView;
    .locals 3
    .parameter "context"
    .parameter "idlescreen"
    .parameter "container"
    .parameter "isPortrait"

    .prologue
    .line 29
    const-string v0, "Port/base/Lockscreen_nosignal.m10"

    .line 30
    .local v0, m10Path:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 31
    const-string v0, "Land/base/Lockscreen_nosignal.m10"

    .line 33
    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 34
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    new-instance v2, Lcom/htc/idlescreen/base/reminderview/NoSignalView;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/htc/idlescreen/base/reminderview/NoSignalView;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/idlescreen/base/widget/IdleContainer;Lcom/htc/fusion/fx/FxScene;)V

    return-object v2
.end method


# virtual methods
.method public getViewType()Lcom/htc/idlescreen/base/IdleState$ViewMode;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/htc/idlescreen/base/IdleState$ViewMode;->NOSIGNAL_MODE:Lcom/htc/idlescreen/base/IdleState$ViewMode;

    return-object v0
.end method

.method public initScene()V
    .locals 3

    .prologue
    .line 47
    const-string v1, "NoSignalView"

    const-string v2, "initScene"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-super {p0}, Lcom/htc/idlescreen/base/reminderview/ReminderView;->initScene()V

    .line 49
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    .line 50
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    const-string v1, "timeline.nosignal"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mTlWarning:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 52
    const-string v1, "textlabel.nosignal"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 53
    const-string v1, "textlabel.nosignal_event"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mEventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 54
    const-string v1, "textlabel.nosignal_eventinfo"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mEventLabel2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 56
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->update()V

    .line 57
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mTlWarning:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 63
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/idlescreen/base/util/MyUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mTlWarning:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 65
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mTlWarning:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "warning_bubble"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/idlescreen/base/util/TelephonyUtil;->getTelephonyStateString(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, TeleStrings:[Ljava/lang/String;
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 83
    :goto_0
    aget-object v1, v0, v3

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mEventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 90
    :goto_1
    aget-object v1, v0, v4

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mEventLabel2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 96
    :goto_2
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mTitleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mEventLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/NoSignalView;->mEventLabel2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_2
.end method
