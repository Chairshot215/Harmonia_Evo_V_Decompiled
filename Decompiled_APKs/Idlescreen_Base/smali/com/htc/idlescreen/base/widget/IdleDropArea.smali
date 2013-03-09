.class public Lcom/htc/idlescreen/base/widget/IdleDropArea;
.super Ljava/lang/Object;
.source "IdleDropArea.java"


# instance fields
.field private mTouchSlopSquare:I

.field protected mXDrops:[Lcom/htc/fusion/fx/Marker;

.field protected mXIdle:Lcom/htc/fusion/fx/Marker;

.field protected mYDrop:Lcom/htc/fusion/fx/Marker;

.field protected mYIdle:Lcom/htc/fusion/fx/Marker;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 4
    .parameter "yTimeline"
    .parameter "xTimeline"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/htc/fusion/fx/Marker;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXDrops:[Lcom/htc/fusion/fx/Marker;

    .line 28
    const-string v1, "idle_state"

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mYIdle:Lcom/htc/fusion/fx/Marker;

    .line 29
    const-string v1, "idle_state"

    invoke-virtual {p2, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXIdle:Lcom/htc/fusion/fx/Marker;

    .line 31
    const-string v1, "drop_over"

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mYDrop:Lcom/htc/fusion/fx/Marker;

    .line 33
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXDrops:[Lcom/htc/fusion/fx/Marker;

    const/4 v2, 0x0

    const-string v3, "drop_over"

    invoke-virtual {p2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v3

    aput-object v3, v1, v2

    .line 34
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXDrops:[Lcom/htc/fusion/fx/Marker;

    const/4 v2, 0x1

    const-string v3, "drop_over_1"

    invoke-virtual {p2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v3

    aput-object v3, v1, v2

    .line 35
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXDrops:[Lcom/htc/fusion/fx/Marker;

    const/4 v2, 0x2

    const-string v3, "drop_over_2"

    invoke-virtual {p2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v3

    aput-object v3, v1, v2

    .line 36
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXDrops:[Lcom/htc/fusion/fx/Marker;

    const/4 v2, 0x3

    const-string v3, "drop_over_3"

    invoke-virtual {p2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v3

    aput-object v3, v1, v2

    .line 37
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXDrops:[Lcom/htc/fusion/fx/Marker;

    const/4 v2, 0x4

    const-string v3, "drop_over_4"

    invoke-virtual {p2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v3

    aput-object v3, v1, v2

    .line 38
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    .line 39
    .local v0, touchslop:I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mTouchSlopSquare:I

    .line 40
    return-void
.end method

.method private isInDuration(Lcom/htc/fusion/fx/Marker;F)F
    .locals 4
    .parameter "marker"
    .parameter "value"

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget v2, p1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v2

    .line 115
    .local v1, min:F
    iget v2, p1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v0, v2

    .line 116
    .local v0, max:F
    cmpl-float v2, p2, v1

    if-lez v2, :cond_0

    cmpg-float v2, p2, v0

    if-gez v2, :cond_0

    .line 117
    add-float v2, v0, v1

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 120
    .end local v0           #max:F
    .end local v1           #min:F
    :goto_0
    return v2

    :cond_0
    const/high16 v2, -0x4080

    goto :goto_0
.end method


# virtual methods
.method public checkMarkerError()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mYIdle:Lcom/htc/fusion/fx/Marker;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "y idle_state is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXIdle:Lcom/htc/fusion/fx/Marker;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x idle_state is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mYDrop:Lcom/htc/fusion/fx/Marker;

    if-nez v0, :cond_2

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "y drop is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXDrops:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXDrops:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXDrops:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXDrops:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXDrops:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-nez v0, :cond_4

    .line 58
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x drop is null mXDrops:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXDrops:[Lcom/htc/fusion/fx/Marker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_4
    return-void
.end method

.method public getYDropStart()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mYDrop:Lcom/htc/fusion/fx/Marker;

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    return v0
.end method

.method protected isDrop(FF)I
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x0

    const/4 v8, -0x1

    .line 64
    iget-object v9, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mYIdle:Lcom/htc/fusion/fx/Marker;

    iget v9, v9, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v6, v9

    .line 65
    .local v6, y_Idle:F
    iget-object v9, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXIdle:Lcom/htc/fusion/fx/Marker;

    iget v9, v9, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v5, v9

    .line 66
    .local v5, x_Idle:F
    sub-float v1, v5, p1

    .line 67
    .local v1, dx:F
    sub-float v2, v6, p2

    .line 68
    .local v2, dy:F
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/idlescreen/base/IdleState;->getRing()Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v4

    .line 69
    .local v4, ring:Lcom/htc/idlescreen/base/widget/IdleRing;
    if-nez v4, :cond_1

    move v3, v8

    .line 109
    :cond_0
    :goto_0
    return v3

    .line 72
    :cond_1
    cmpg-float v9, v2, v11

    if-gtz v9, :cond_2

    move v3, v8

    .line 73
    goto :goto_0

    .line 76
    :cond_2
    mul-float v9, v1, v1

    mul-float v10, v2, v2

    add-float/2addr v9, v10

    iget v10, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mTouchSlopSquare:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    move v3, v8

    .line 77
    goto :goto_0

    .line 79
    :cond_3
    iget-object v9, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mYDrop:Lcom/htc/fusion/fx/Marker;

    if-eqz v9, :cond_5

    .line 81
    iget-object v9, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mYDrop:Lcom/htc/fusion/fx/Marker;

    iget v9, v9, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v7, v9

    .line 82
    .local v7, y_max:F
    cmpg-float v9, p2, v7

    if-gez v9, :cond_5

    .line 99
    invoke-virtual {v4}, Lcom/htc/idlescreen/base/widget/IdleRing;->getDropIndex()I

    move-result v3

    .line 100
    .local v3, index:I
    iget-object v9, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXDrops:[Lcom/htc/fusion/fx/Marker;

    aget-object v0, v9, v3

    .line 101
    .local v0, drop:Lcom/htc/fusion/fx/Marker;
    if-nez v0, :cond_4

    .line 102
    iget-object v9, p0, Lcom/htc/idlescreen/base/widget/IdleDropArea;->mXDrops:[Lcom/htc/fusion/fx/Marker;

    const/4 v10, 0x0

    aget-object v0, v9, v10

    .line 104
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/htc/idlescreen/base/widget/IdleDropArea;->isInDuration(Lcom/htc/fusion/fx/Marker;F)F

    move-result v9

    cmpl-float v9, v9, v11

    if-gez v9, :cond_0

    .end local v0           #drop:Lcom/htc/fusion/fx/Marker;
    .end local v3           #index:I
    .end local v7           #y_max:F
    :cond_5
    move v3, v8

    .line 109
    goto :goto_0
.end method
