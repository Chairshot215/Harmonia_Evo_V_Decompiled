.class Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;
.super Ljava/lang/Object;
.source "IdleScreenClockStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$ClickListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "[FBIdlScn]"

.field private static final WHAT_ON_INIT:I = 0x10

.field private static final WHAT_ON_PAUSE:I = 0x12

.field private static final WHAT_ON_RESUME:I = 0x11


# instance fields
.field private mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

.field private mClockClick:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$ClickListener;

.field private mContext:Landroid/content/Context;

.field private mFxClock:Lcom/htc/fusion/fx/FxScene;

.field private mFxContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mFxScene:Lcom/htc/fusion/fx/FxScene;

.field private mFxTimelineTouch:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mLooper:Landroid/os/Looper;

.field private mNonUiHandler:Landroid/os/Handler;

.field private sClockType:[Lcom/htc/clock3dwidget/ClockUtils$ClockType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)V
    .locals 3
    .parameter "context"
    .parameter "scene"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$ClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$ClickListener;-><init>(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$1;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mClockClick:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$ClickListener;

    .line 33
    iput-object v1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mHandlerThread:Landroid/os/HandlerThread;

    .line 34
    iput-object v1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mLooper:Landroid/os/Looper;

    .line 35
    iput-object v1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mNonUiHandler:Landroid/os/Handler;

    .line 41
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_03:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_04:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_05:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_06:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_07:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_08:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_09:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_10:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_BEAM:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_RING:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/clock3dwidget/ClockUtils$ClockType;->CLOCK_SPIN_CYCLE:Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->sClockType:[Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    .line 49
    iput-object p1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 51
    invoke-direct {p0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->initHandler()V

    .line 52
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->doCreate()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->doResume()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->doPause()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;)Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxTimelineTouch:Lcom/htc/fusion/fx/FxTimelineControl;

    return-object v0
.end method

.method private doCreate()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 117
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenSettings;->getClockType(Landroid/content/Context;)I

    move-result v11

    .line 118
    .local v11, index:I
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->sClockType:[Lcom/htc/clock3dwidget/ClockUtils$ClockType;

    aget-object v9, v0, v11

    .line 119
    .local v9, clock_type:Lcom/htc/clock3dwidget/ClockUtils$ClockType;
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mContext:Landroid/content/Context;

    invoke-static {v9, v0}, Lcom/htc/clock3dwidget/ClockUtils;->getClockRes(Lcom/htc/clock3dwidget/ClockUtils$ClockType;Landroid/content/Context;)Lcom/htc/clock3dwidget/ClockRes;

    move-result-object v8

    .line 120
    .local v8, analogClockRes:Lcom/htc/clock3dwidget/ClockRes;
    iget-object v13, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 121
    .local v13, scene:Lcom/htc/fusion/fx/FxScene;
    if-nez v13, :cond_0

    .line 142
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x3

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "scenecontainer.lockscreen_clock"

    aput-object v0, v10, v1

    const-string v0, "timeline.clock_touch"

    aput-object v0, v10, v6

    const-string v0, "hitbox.touch_bounce"

    aput-object v0, v10, v2

    .line 125
    .local v10, controls:[Ljava/lang/String;
    invoke-virtual {v13, v10}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v12

    .line 126
    .local v12, objs:[Lcom/htc/fusion/fx/FxObject;
    aget-object v0, v12, v1

    check-cast v0, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 127
    aget-object v0, v12, v6

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxTimelineTouch:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 128
    aget-object v0, v12, v2

    check-cast v0, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 131
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v6}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mClockClick:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$ClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 135
    iget-object v0, v8, Lcom/htc/clock3dwidget/ClockRes;->m10FilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxClock:Lcom/htc/fusion/fx/FxScene;

    .line 136
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxClock:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v6}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 137
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iget-object v1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxClock:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 139
    new-instance v0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    iget-object v1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxClock:Lcom/htc/fusion/fx/FxScene;

    iget-object v5, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxClock:Lcom/htc/fusion/fx/FxScene;

    move-object v7, v3

    invoke-direct/range {v0 .. v8}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;ILcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;Lcom/htc/clock3dwidget/ClockRes;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    goto :goto_0
.end method

.method private doPause()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doPause()V

    .line 160
    :cond_1
    return-void
.end method

.method private doResume()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doResume()V

    .line 151
    :cond_1
    return-void
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IdleScreenClockStub"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mHandlerThread:Landroid/os/HandlerThread;

    .line 58
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mLooper:Landroid/os/Looper;

    .line 60
    new-instance v0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$1;

    iget-object v1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$1;-><init>(Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mNonUiHandler:Landroid/os/Handler;

    .line 75
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    iput-object v2, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mNonUiHandler:Landroid/os/Handler;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 99
    iput-object v2, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mLooper:Landroid/os/Looper;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mAnalogClockWidget:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v0}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doDestroy()V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxContainer:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mFxHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mClockClick:Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub$ClickListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 113
    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mNonUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/htc/clock3dwidget/idlescreen/IdleScreenClockStub;->mNonUiHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    :cond_0
    return-void
.end method
