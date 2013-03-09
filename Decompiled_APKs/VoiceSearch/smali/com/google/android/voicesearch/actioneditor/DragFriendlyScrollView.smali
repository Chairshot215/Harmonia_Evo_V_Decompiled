.class public Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;
.super Landroid/widget/ScrollView;
.source "DragFriendlyScrollView.java"


# instance fields
.field private mDragStartX:F

.field private mDragStartY:F

.field private mEventStartTime:J

.field private mScrollMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method private updateScrollMode(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "ev"

    .prologue
    const v11, 0x45992000

    .line 114
    iget v7, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mScrollMode:I

    if-eqz v7, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget v7, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mDragStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 120
    .local v3, dx:F
    iget v7, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mDragStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 121
    .local v4, dy:F
    mul-float v7, v3, v3

    mul-float v8, v4, v4

    add-float v2, v7, v8

    .line 123
    .local v2, distSquared:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mEventStartTime:J

    sub-long/2addr v7, v9

    long-to-float v7, v7

    const/high16 v8, 0x447a

    div-float v6, v7, v8

    .line 124
    .local v6, time:F
    div-float v5, v2, v6

    .line 125
    .local v5, speedSquared:F
    div-float v7, v3, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    double-to-float v1, v7

    .line 126
    .local v1, angleFromVertical:F
    const v7, 0x3fc90fdb

    sub-float v0, v7, v1

    .line 128
    .local v0, angleFromHorizontal:F
    const v7, 0x3eb2b8c2

    cmpg-float v7, v1, v7

    if-gez v7, :cond_2

    cmpl-float v7, v2, v11

    if-lez v7, :cond_2

    const v7, 0x46a44200

    cmpl-float v7, v5, v7

    if-lez v7, :cond_2

    .line 132
    const-string v7, "DragFriendlyScrollView"

    const-string v8, "touch move  - scrolling"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v7, 0x1

    iput v7, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mScrollMode:I

    goto :goto_0

    .line 134
    :cond_2
    const v7, 0x3f860a92

    cmpg-float v7, v0, v7

    if-gez v7, :cond_0

    cmpl-float v7, v2, v11

    if-lez v7, :cond_0

    .line 137
    const-string v7, "DragFriendlyScrollView"

    const-string v8, "touch move  - selecting"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v7, 0x2

    iput v7, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mScrollMode:I

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 79
    .local v0, superResult:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mDragStartX:F

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mDragStartY:F

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mEventStartTime:J

    .line 83
    iput v1, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mScrollMode:I

    move v0, v1

    .line 110
    .end local v0           #superResult:Z
    :cond_0
    :goto_0
    return v0

    .line 90
    .restart local v0       #superResult:Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->updateScrollMode(Landroid/view/MotionEvent;)V

    .line 93
    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mScrollMode:I

    if-eqz v2, :cond_2

    .line 94
    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mScrollMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 105
    goto :goto_0

    :cond_2
    move v0, v1

    .line 110
    goto :goto_0
.end method
