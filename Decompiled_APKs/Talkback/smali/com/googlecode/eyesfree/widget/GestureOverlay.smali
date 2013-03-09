.class public Lcom/googlecode/eyesfree/widget/GestureOverlay;
.super Landroid/view/View;
.source "GestureOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/eyesfree/widget/GestureOverlay$Gesture;,
        Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;
    }
.end annotation


# instance fields
.field private cb:Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;

.field private currentGesture:I

.field private final down:D

.field private downX:D

.field private downY:D

.field private final downleft:D

.field private final downright:D

.field private edgeGesture:Z

.field private final left:D

.field leftEdge:I

.field private radiusThreshold:I

.field private final right:D

.field rightEdge:I

.field private final rightWrap:D

.field private final up:D

.field private final upleft:D

.field private final upright:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->left:D

    .line 70
    const-wide v0, 0x3fe921fb54442d18L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->upleft:D

    .line 72
    const-wide v0, 0x3ff921fb54442d18L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->up:D

    .line 74
    const-wide v0, 0x4002d97c7f3321d2L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->upright:D

    .line 76
    const-wide v0, -0x3ffd268380ccde2eL

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->downright:D

    .line 78
    const-wide v0, -0x4006de04abbbd2e8L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->down:D

    .line 80
    const-wide v0, -0x4016de04abbbd2e8L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->downleft:D

    .line 82
    const-wide v0, 0x400921fb54442d18L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->right:D

    .line 84
    const-wide v0, -0x3ff6de04abbbd2e8L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->rightWrap:D

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->cb:Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;

    .line 94
    const/16 v0, 0x1e

    iput v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->radiusThreshold:I

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->edgeGesture:Z

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->left:D

    .line 70
    const-wide v0, 0x3fe921fb54442d18L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->upleft:D

    .line 72
    const-wide v0, 0x3ff921fb54442d18L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->up:D

    .line 74
    const-wide v0, 0x4002d97c7f3321d2L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->upright:D

    .line 76
    const-wide v0, -0x3ffd268380ccde2eL

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->downright:D

    .line 78
    const-wide v0, -0x4006de04abbbd2e8L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->down:D

    .line 80
    const-wide v0, -0x4016de04abbbd2e8L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->downleft:D

    .line 82
    const-wide v0, 0x400921fb54442d18L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->right:D

    .line 84
    const-wide v0, -0x3ff6de04abbbd2e8L

    iput-wide v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->rightWrap:D

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->cb:Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;

    .line 94
    const/16 v0, 0x1e

    iput v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->radiusThreshold:I

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->edgeGesture:Z

    .line 102
    iput-object p2, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->cb:Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;

    .line 103
    return-void
.end method


# virtual methods
.method public evalMotion(DD)I
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 179
    iget v7, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->radiusThreshold:I

    int-to-float v2, v7

    .line 180
    .local v2, rTolerance:F
    const-wide v5, 0x3fd0c152382d7365L

    .line 182
    .local v5, thetaTolerance:D
    iget-boolean v7, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->edgeGesture:Z

    if-eqz v7, :cond_2

    .line 183
    iget v7, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->leftEdge:I

    int-to-double v7, v7

    cmpg-double v7, p1, v7

    if-gez v7, :cond_0

    iget-wide v7, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->downX:D

    iget v9, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->leftEdge:I

    int-to-double v9, v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_0

    .line 184
    const/16 v7, 0xa

    .line 217
    :goto_0
    return v7

    .line 185
    :cond_0
    iget v7, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->rightEdge:I

    int-to-double v7, v7

    cmpl-double v7, p1, v7

    if-lez v7, :cond_1

    iget-wide v7, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->downX:D

    iget v9, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->rightEdge:I

    int-to-double v9, v9

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    .line 186
    const/16 v7, 0xb

    goto :goto_0

    .line 188
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->edgeGesture:Z

    .line 192
    :cond_2
    iget-wide v7, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->downX:D

    sub-double/2addr v7, p1

    iget-wide v9, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->downX:D

    sub-double/2addr v9, p1

    mul-double/2addr v7, v9

    iget-wide v9, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->downY:D

    sub-double v9, v9, p3

    iget-wide v11, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->downY:D

    sub-double v11, v11, p3

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 194
    .local v0, r:D
    float-to-double v7, v2

    cmpg-double v7, v0, v7

    if-gez v7, :cond_3

    .line 195
    const/4 v7, 0x5

    goto :goto_0

    .line 198
    :cond_3
    iget-wide v7, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->downY:D

    sub-double v7, v7, p3

    iget-wide v9, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->downX:D

    sub-double/2addr v9, p1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 199
    .local v3, theta:D
    const-wide/16 v7, 0x0

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_4

    .line 200
    const/4 v7, 0x4

    goto :goto_0

    .line 201
    :cond_4
    const-wide v7, 0x3fe921fb54442d18L

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_5

    .line 202
    const/4 v7, 0x1

    goto :goto_0

    .line 203
    :cond_5
    const-wide v7, 0x3ff921fb54442d18L

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_6

    .line 204
    const/4 v7, 0x2

    goto :goto_0

    .line 205
    :cond_6
    const-wide v7, 0x4002d97c7f3321d2L

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_7

    .line 206
    const/4 v7, 0x3

    goto :goto_0

    .line 207
    :cond_7
    const-wide v7, -0x3ffd268380ccde2eL

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_8

    .line 208
    const/16 v7, 0x9

    goto/16 :goto_0

    .line 209
    :cond_8
    const-wide v7, -0x4006de04abbbd2e8L

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_9

    .line 210
    const/16 v7, 0x8

    goto/16 :goto_0

    .line 211
    :cond_9
    const-wide v7, -0x4016de04abbbd2e8L

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gez v7, :cond_a

    .line 212
    const/4 v7, 0x7

    goto/16 :goto_0

    .line 213
    :cond_a
    const-wide v7, 0x400921fb54442d18L

    sub-double/2addr v7, v5

    cmpl-double v7, v3, v7

    if-gtz v7, :cond_b

    const-wide v7, -0x3ff6de04abbbd2e8L

    add-double/2addr v7, v5

    cmpg-double v7, v3, v7

    if-gez v7, :cond_c

    .line 214
    :cond_b
    const/4 v7, 0x6

    goto/16 :goto_0

    .line 217
    :cond_c
    const/4 v7, -0x1

    goto/16 :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/googlecode/eyesfree/widget/GestureOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 125
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 126
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 127
    .local v3, y:F
    const/4 v1, -0x1

    .line 128
    .local v1, prevGesture:I
    sparse-switch v0, :sswitch_data_0

    .line 161
    iget v1, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    .line 162
    float-to-double v4, v2

    float-to-double v6, v3

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/googlecode/eyesfree/widget/GestureOverlay;->evalMotion(DD)I

    move-result v4

    iput v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    .line 164
    iget v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    if-ne v4, v9, :cond_4

    .line 165
    iput v1, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    .line 175
    :cond_0
    :goto_0
    return v8

    .line 131
    :sswitch_0
    float-to-double v4, v2

    iput-wide v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->downX:D

    .line 132
    float-to-double v4, v3

    iput-wide v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->downY:D

    .line 133
    invoke-virtual {p0}, Lcom/googlecode/eyesfree/widget/GestureOverlay;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x7

    iput v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->leftEdge:I

    .line 134
    invoke-virtual {p0}, Lcom/googlecode/eyesfree/widget/GestureOverlay;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/googlecode/eyesfree/widget/GestureOverlay;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x7

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->rightEdge:I

    .line 135
    iget v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->leftEdge:I

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    .line 136
    const/16 v4, 0xa

    iput v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    .line 137
    iput-boolean v8, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->edgeGesture:Z

    .line 145
    :goto_1
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->cb:Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;

    if-eqz v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->cb:Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;

    iget v5, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    invoke-interface {v4, v5}, Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;->onGestureStart(I)V

    goto :goto_0

    .line 138
    :cond_1
    iget v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->rightEdge:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 139
    const/16 v4, 0xb

    iput v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    .line 140
    iput-boolean v8, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->edgeGesture:Z

    goto :goto_1

    .line 142
    :cond_2
    const/4 v4, 0x5

    iput v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    .line 143
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->edgeGesture:Z

    goto :goto_1

    .line 150
    :sswitch_1
    iget v1, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    .line 151
    float-to-double v4, v2

    float-to-double v6, v3

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/googlecode/eyesfree/widget/GestureOverlay;->evalMotion(DD)I

    move-result v4

    iput v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    .line 153
    iget v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    if-ne v4, v9, :cond_3

    .line 154
    iput v1, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    .line 156
    :cond_3
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->cb:Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;

    if-eqz v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->cb:Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;

    iget v5, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    invoke-interface {v4, v5}, Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;->onGestureFinish(I)V

    goto :goto_0

    .line 168
    :cond_4
    iget v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    if-eq v1, v4, :cond_0

    .line 169
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->cb:Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;

    if-eqz v4, :cond_0

    .line 170
    iget-object v4, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->cb:Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;

    iget v5, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->currentGesture:I

    invoke-interface {v4, v5}, Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;->onGestureChange(I)V

    goto :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setGestureListener(Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->cb:Lcom/googlecode/eyesfree/widget/GestureOverlay$GestureListener;

    .line 111
    return-void
.end method

.method public setMinimumRadius(I)V
    .locals 0
    .parameter "minRadius"

    .prologue
    .line 114
    iput p1, p0, Lcom/googlecode/eyesfree/widget/GestureOverlay;->radiusThreshold:I

    .line 115
    return-void
.end method
