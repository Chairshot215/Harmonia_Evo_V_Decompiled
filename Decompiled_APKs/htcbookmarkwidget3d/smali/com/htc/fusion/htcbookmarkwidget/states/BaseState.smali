.class public Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;
.super Ljava/lang/Object;
.source "BaseState.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/states/IState;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"


# instance fields
.field private mEndFrame:I

.field private mHost:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

.field private mStartFrame:I

.field private mTilt:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mWidgetIcon:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;)V
    .locals 1
    .parameter "host"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mStartFrame:I

    .line 83
    iput v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mEndFrame:I

    .line 27
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mHost:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    .line 28
    return-void
.end method

.method private initTilt()V
    .locals 5

    .prologue
    .line 85
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mHost:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    invoke-interface {v3}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    .line 86
    .local v2, scene:Lcom/htc/fusion/fx/FxScene;
    const/4 v1, 0x0

    .line 87
    .local v1, object:Lcom/htc/fusion/fx/FxObject;
    if-eqz v2, :cond_0

    .line 88
    const-string v3, "timeline.tiltanim"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 89
    :cond_0
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_1

    .line 90
    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    .end local v1           #object:Lcom/htc/fusion/fx/FxObject;
    iput-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v3, :cond_2

    .line 93
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v4, "tilt"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 94
    .local v0, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v0, :cond_2

    .line 95
    iget v3, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v3, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mStartFrame:I

    .line 96
    iget v3, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v3, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mEndFrame:I

    .line 99
    .end local v0           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_2
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "BaseState"

    return-object v0
.end method

.method public getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mHost:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfiguration"

    .prologue
    .line 71
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mHost:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 72
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    const/4 v0, 0x0

    .line 73
    .local v0, object:Lcom/htc/fusion/fx/FxObject;
    if-eqz v1, :cond_0

    .line 74
    const-string v2, "timeline.earth_rotate"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    move-object v2, v0

    .line 75
    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mWidgetIcon:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 79
    :goto_0
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->initTilt()V

    .line 80
    return-void

    .line 77
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mWidgetIcon:Lcom/htc/fusion/fx/FxTimelineControl;

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 42
    iget-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mHost:Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    invoke-interface {v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 43
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    const/4 v0, 0x0

    .line 44
    .local v0, object:Lcom/htc/fusion/fx/FxObject;
    if-eqz v1, :cond_0

    .line 45
    const-string v2, "timeline.earth_rotate"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    move-object v2, v0

    .line 46
    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mWidgetIcon:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 50
    :goto_0
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->initTilt()V

    .line 51
    return-void

    .line 48
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mWidgetIcon:Lcom/htc/fusion/fx/FxTimelineControl;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onItemEvent(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 113
    return-void
.end method

.method public onListViewEvent(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    .line 116
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    if-ne v0, v2, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->enableHostSlide(Z)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->enableHostSlide(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mWidgetIcon:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mWidgetIcon:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 63
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mWidgetIcon:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mWidgetIcon:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "earth_rotate"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 3
    .parameter "tilt"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 103
    iget v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mStartFrame:I

    iget v2, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mEndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v0

    .line 104
    .local v0, frame:F
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/BaseState;->mTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 106
    .end local v0           #frame:F
    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 35
    return-void
.end method
