.class public Lcom/htc/idlescreen/base/widget/ReminderButton;
.super Ljava/lang/Object;
.source "ReminderButton.java"

# interfaces
.implements Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;
.implements Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/widget/ReminderButton$1;,
        Lcom/htc/idlescreen/base/widget/ReminderButton$MyHandler;
    }
.end annotation


# static fields
.field private static final MARKER_OFF:Ljava/lang/String; = "Opacity_off"

.field private static final MARKER_ON:Ljava/lang/String; = "Opacity_on"

.field private static final WHAT_ON_NAME_VISIBLE:I = 0x1


# instance fields
.field private mDoHide:Z

.field mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

.field private mHandler:Landroid/os/Handler;

.field private mHideName:Z

.field private mIdleView:Lcom/htc/idlescreen/base/widget/IdleView;

.field public mMarkerOff:Ljava/lang/String;

.field public mMarkerOn:Ljava/lang/String;

.field mTextComp:Lcom/htc/fusion/fx/FxTimelineControl;

.field mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mTouchSlopSquare:I


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/widget/IdleView;Lcom/htc/lockscreen/fusion/widget/IdleDragControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxTextLabel;)V
    .locals 4
    .parameter "idleView"
    .parameter "drag"
    .parameter "textComp"
    .parameter "textLabel"

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v1, "Opacity_off"

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mMarkerOff:Ljava/lang/String;

    .line 31
    const-string v1, "Opacity_on"

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mMarkerOn:Ljava/lang/String;

    .line 33
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mHideName:Z

    .line 41
    new-instance v1, Lcom/htc/idlescreen/base/widget/ReminderButton$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/idlescreen/base/widget/ReminderButton$MyHandler;-><init>(Lcom/htc/idlescreen/base/widget/ReminderButton;Lcom/htc/idlescreen/base/widget/ReminderButton$1;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mHandler:Landroid/os/Handler;

    .line 83
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDoHide:Z

    .line 43
    check-cast p2, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    .end local p2
    iput-object p2, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    .line 44
    iput-object p3, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTextComp:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 45
    iput-object p4, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 46
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mIdleView:Lcom/htc/idlescreen/base/widget/IdleView;

    .line 47
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    .line 48
    .local v0, touchslop:I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTouchSlopSquare:I

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/widget/ReminderButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->handleNameVisible(Z)V

    return-void
.end method

.method private handleNameVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTextComp:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mHideName:Z

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTextComp:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 151
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTextComp:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mMarkerOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mHideName:Z

    goto :goto_0

    .line 154
    :cond_2
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mHideName:Z

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTextComp:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 156
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTextComp:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mMarkerOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mHideName:Z

    goto :goto_0
.end method


# virtual methods
.method public getDragControl()Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0, p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setOnDragListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;)V

    .line 53
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0, p0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setOnBackListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;)V

    .line 54
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->init()V

    .line 55
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onEndBack(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 3
    .parameter "control"

    .prologue
    .line 111
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 112
    return-void
.end method

.method public onEndDrag(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FFZ)Z
    .locals 1
    .parameter "dragControl"
    .parameter "x"
    .parameter "y"
    .parameter "unlock"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mIdleView:Lcom/htc/idlescreen/base/widget/IdleView;

    invoke-virtual {v0, p0}, Lcom/htc/idlescreen/base/widget/IdleView;->onSphereReleased(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public onMoveDrag(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FFZ)V
    .locals 3
    .parameter "dragControl"
    .parameter "dx"
    .parameter "dy"
    .parameter "inDrop"

    .prologue
    .line 86
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDoHide:Z

    if-nez v1, :cond_0

    .line 88
    mul-float v1, p2, p2

    mul-float v2, p3, p3

    add-float v0, v1, v2

    .line 89
    .local v0, move:F
    iget v1, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTouchSlopSquare:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDoHide:Z

    .line 92
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mIdleView:Lcom/htc/idlescreen/base/widget/IdleView;

    invoke-virtual {v1, p0}, Lcom/htc/idlescreen/base/widget/IdleView;->onSphereMoved(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 96
    .end local v0           #move:F
    :cond_0
    return-void
.end method

.method public onStartBack(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)V
    .locals 0
    .parameter "control"

    .prologue
    .line 117
    return-void
.end method

.method public onStartDrag(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;FF)V
    .locals 1
    .parameter "dragControl"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDoHide:Z

    .line 101
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mIdleView:Lcom/htc/idlescreen/base/widget/IdleView;

    invoke-virtual {v0, p0}, Lcom/htc/idlescreen/base/widget/IdleView;->onSpherePressed(Lcom/htc/idlescreen/base/widget/ReminderButton;)V

    .line 103
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->reset()V

    .line 73
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setNameVisible(ZJ)V

    .line 74
    invoke-virtual {p0, v2}, Lcom/htc/idlescreen/base/widget/ReminderButton;->setIconVisible(Z)V

    .line 75
    return-void
.end method

.method public setEnable(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setEnable(Z)V

    .line 192
    return-void
.end method

.method public setFakeImage(Landroid/content/Context;I)V
    .locals 1
    .parameter "mContext"
    .parameter "btnSnooze"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setFakeImage(Landroid/content/Context;I)V

    .line 188
    :cond_0
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, goal:F
    if-eqz p1, :cond_0

    .line 140
    const/high16 v0, 0x3f80

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setOpacity(FZ)V

    .line 143
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    return-void
.end method

.method public setNameVisible(ZJ)V
    .locals 3
    .parameter "visible"
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 120
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 121
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 122
    if-eqz p1, :cond_0

    .line 123
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 129
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v0, p2, p3}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 130
    return-void

    .line 126
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setVisible(Z)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 181
    :cond_1
    return-void
.end method

.method public uninit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setOnDragListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnDragListener;)V

    .line 61
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->setOnBackListener(Lcom/htc/lockscreen/fusion/widget/IdleDragControl$OnBackListener;)V

    .line 62
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/ReminderButton;->mDragControl:Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;->uninit()V

    .line 64
    return-void
.end method
