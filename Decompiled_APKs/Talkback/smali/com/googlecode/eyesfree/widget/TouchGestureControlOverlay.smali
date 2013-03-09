.class public Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;
.super Landroid/view/View;
.source "TouchGestureControlOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;,
        Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;
    }
.end annotation


# instance fields
.field private cb:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;

.field private currentGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

.field private final down:D

.field private downX:D

.field private downY:D

.field private final downleft:D

.field private final downright:D

.field private final left:D

.field private final right:D

.field private final rightWrap:D

.field private final up:D

.field private final upleft:D

.field private final upright:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->left:D

    .line 37
    const-wide v0, 0x3fe921fb54442d18L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->upleft:D

    .line 38
    const-wide v0, 0x3ff921fb54442d18L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->up:D

    .line 39
    const-wide v0, 0x4002d97c7f3321d2L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->upright:D

    .line 40
    const-wide v0, -0x3ffd268380ccde2eL

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->downright:D

    .line 41
    const-wide v0, -0x4006de04abbbd2e8L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->down:D

    .line 42
    const-wide v0, -0x4016de04abbbd2e8L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->downleft:D

    .line 43
    const-wide v0, 0x400921fb54442d18L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->right:D

    .line 44
    const-wide v0, -0x3ff6de04abbbd2e8L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->rightWrap:D

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->cb:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->left:D

    .line 37
    const-wide v0, 0x3fe921fb54442d18L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->upleft:D

    .line 38
    const-wide v0, 0x3ff921fb54442d18L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->up:D

    .line 39
    const-wide v0, 0x4002d97c7f3321d2L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->upright:D

    .line 40
    const-wide v0, -0x3ffd268380ccde2eL

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->downright:D

    .line 41
    const-wide v0, -0x4006de04abbbd2e8L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->down:D

    .line 42
    const-wide v0, -0x4016de04abbbd2e8L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->downleft:D

    .line 43
    const-wide v0, 0x400921fb54442d18L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->right:D

    .line 44
    const-wide v0, -0x3ff6de04abbbd2e8L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->rightWrap:D

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->cb:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;

    .line 53
    iput-object p2, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->cb:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;

    .line 54
    return-void
.end method


# virtual methods
.method public evalMotion(DD)Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 109
    const/high16 v2, 0x41c8

    .line 110
    .local v2, rTolerance:F
    const-wide v5, 0x3fd0c152382d7365L

    .line 112
    .local v5, thetaTolerance:D
    iget-wide v7, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->downX:D

    sub-double/2addr v7, p1

    iget-wide v9, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->downX:D

    sub-double/2addr v9, p1

    mul-double/2addr v7, v9

    iget-wide v9, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->downY:D

    sub-double v9, v9, p3

    iget-wide v11, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->downY:D

    sub-double v11, v11, p3

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 114
    .local v0, r:D
    float-to-double v7, v2

    cmpg-double v7, v0, v7

    if-gez v7, :cond_0

    .line 115
    sget-object v7, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->CENTER:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    .line 137
    :goto_0
    return-object v7

    .line 118
    :cond_0
    iget-wide v7, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->downY:D

    sub-double v7, v7, p3

    iget-wide v9, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->downX:D

    sub-double/2addr v9, p1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 119
    .local v3, theta:D
    const-wide/16 v7, 0x0

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_1

    .line 120
    sget-object v7, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->LEFT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    goto :goto_0

    .line 121
    :cond_1
    const-wide v7, 0x3fe921fb54442d18L

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_2

    .line 122
    sget-object v7, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->UPLEFT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    goto :goto_0

    .line 123
    :cond_2
    const-wide v7, 0x3ff921fb54442d18L

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_3

    .line 124
    sget-object v7, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->UP:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    goto :goto_0

    .line 125
    :cond_3
    const-wide v7, 0x4002d97c7f3321d2L

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_4

    .line 126
    sget-object v7, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->UPRIGHT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    goto :goto_0

    .line 127
    :cond_4
    const-wide v7, -0x3ffd268380ccde2eL

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_5

    .line 128
    sget-object v7, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->DOWNRIGHT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    goto :goto_0

    .line 129
    :cond_5
    const-wide v7, -0x4006de04abbbd2e8L

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_6

    .line 130
    sget-object v7, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->DOWN:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    goto :goto_0

    .line 131
    :cond_6
    const-wide v7, -0x4016de04abbbd2e8L

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_7

    .line 132
    sget-object v7, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->DOWNLEFT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    goto/16 :goto_0

    .line 133
    :cond_7
    const-wide v7, 0x400921fb54442d18L

    sub-double/2addr v7, v5

    cmpl-double v7, v3, v7

    if-gtz v7, :cond_8

    const-wide v7, -0x3ff6de04abbbd2e8L

    add-double/2addr v7, v5

    cmpg-double v7, v3, v7

    if-gez v7, :cond_9

    .line 134
    :cond_8
    sget-object v7, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->RIGHT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    goto/16 :goto_0

    .line 137
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 67
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 68
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 69
    .local v3, y:F
    const/4 v1, 0x0

    .line 70
    .local v1, prevGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;
    packed-switch v0, :pswitch_data_0

    .line 91
    iget-object v1, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->currentGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    .line 92
    float-to-double v4, v2

    float-to-double v6, v3

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->evalMotion(DD)Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    move-result-object v4

    iput-object v4, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->currentGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    .line 94
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->currentGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    if-nez v4, :cond_2

    .line 95
    iput-object v1, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->currentGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    .line 105
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 72
    :pswitch_0
    float-to-double v4, v2

    iput-wide v4, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->downX:D

    .line 73
    float-to-double v4, v3

    iput-wide v4, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->downY:D

    .line 74
    sget-object v4, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->CENTER:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    iput-object v4, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->currentGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    .line 75
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->cb:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->cb:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;

    iget-object v5, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->currentGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    invoke-interface {v4, v5}, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;->onGestureStart(Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v1, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->currentGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    .line 81
    float-to-double v4, v2

    float-to-double v6, v3

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->evalMotion(DD)Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    move-result-object v4

    iput-object v4, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->currentGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    .line 83
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->currentGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    if-nez v4, :cond_1

    .line 84
    iput-object v1, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->currentGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    .line 86
    :cond_1
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->cb:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;

    if-eqz v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->cb:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;

    iget-object v5, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->currentGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    invoke-interface {v4, v5}, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;->onGestureFinish(Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->currentGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    if-eq v1, v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->cb:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;

    if-eqz v4, :cond_0

    .line 100
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->cb:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;

    iget-object v5, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->currentGesture:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    invoke-interface {v4, v5}, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;->onGestureChange(Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setGestureListener(Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;->cb:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$GestureListener;

    .line 62
    return-void
.end method
