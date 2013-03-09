.class public Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;
.super Ljava/lang/Object;
.source "PPStroke.java"


# static fields
.field private static final AUTO_SPEED_COUNT:I = 0x14

.field private static final DUMP_LOG:Z = false

.field public static final END_OF_CHARACTER:I = -0x2

.field public static final END_OF_STROKE:I = -0x1

.field private static final INTERVAL_UNIT:I = 0xc8

.field private static final LOG_CLASS:Ljava/lang/String; = "[PPStroke] "

.field private static final LOG_TITLE:Ljava/lang/String; = "PPLOG"


# instance fields
.field private m_arrayAutoSpeed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_arrayStrokePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private m_bAutoSpeed:Z

.field private m_bEnableDynamicTime:Z

.field private m_bHasStopSign:Z

.field private m_bIsStroking:Z

.field private m_configData:Lcom/htc/android/htcime/util/ConfigData;

.field private m_context:Landroid/content/Context;

.field private m_lLastStrokeStopTime:J

.field private m_lStrokeStartTime:J

.field private m_nMaxInterval:I

.field private m_nPointCount:I

.field private m_nStrokePanelH:I

.field private m_nStrokePanelW:I

.field private m_nStrokelength:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_context:Landroid/content/Context;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayAutoSpeed:Ljava/util/ArrayList;

    .line 68
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bIsStroking:Z

    .line 69
    iput-wide v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_lLastStrokeStopTime:J

    .line 70
    iput-wide v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_lStrokeStartTime:J

    .line 71
    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nPointCount:I

    .line 72
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nMaxInterval:I

    .line 73
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bHasStopSign:Z

    .line 74
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bAutoSpeed:Z

    .line 75
    new-instance v0, Lcom/htc/android/htcime/util/ConfigData;

    invoke-direct {v0}, Lcom/htc/android/htcime/util/ConfigData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_configData:Lcom/htc/android/htcime/util/ConfigData;

    .line 76
    return-void
.end method

.method private getMaxdistance()D
    .locals 9

    .prologue
    const-wide/high16 v7, 0x4000

    .line 266
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nPointCount:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 270
    .local v0, pPointEnd:Landroid/graphics/PointF;
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nStrokePanelW:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 271
    const/4 v1, 0x0

    .line 275
    .local v1, x:F
    :goto_0
    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nStrokePanelH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 276
    const/4 v2, 0x0

    .line 280
    .local v2, y:F
    :goto_1
    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    return-wide v3

    .line 273
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_0
    iget v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nStrokePanelW:I

    int-to-float v1, v3

    .restart local v1       #x:F
    goto :goto_0

    .line 278
    :cond_1
    iget v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nStrokePanelH:I

    int-to-float v2, v3

    .restart local v2       #y:F
    goto :goto_1
.end method


# virtual methods
.method public addPoint(Landroid/graphics/PointF;)V
    .locals 3
    .parameter "ptStroke"

    .prologue
    .line 84
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 86
    .local v0, pt:Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nPointCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nPointCount:I

    .line 88
    return-void
.end method

.method public autoSetSpeedLevel(I)V
    .locals 1
    .parameter "nMaxLevel"

    .prologue
    .line 160
    mul-int/lit16 v0, p1, 0xc8

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nMaxInterval:I

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bAutoSpeed:Z

    .line 162
    return-void
.end method

.method public getPoint(I)Landroid/graphics/PointF;
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    return-object v0
.end method

.method public getPointArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStrokePointSize()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isAllFinished()Z
    .locals 11

    .prologue
    const/high16 v10, -0x4000

    const/high16 v9, -0x4080

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 311
    .local v2, lCurTime:J
    const/4 v0, 0x0

    .line 312
    .local v0, bIsFinished:Z
    const/4 v1, 0x0

    .line 314
    .local v1, i:I
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bIsStroking:Z

    if-nez v5, :cond_2

    iget-wide v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_lLastStrokeStopTime:J

    sub-long v5, v2, v5

    iget v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nMaxInterval:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    .line 315
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bHasStopSign:Z

    if-nez v5, :cond_1

    .line 316
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_0

    .line 320
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v9, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 321
    .local v4, ptAppend:Landroid/graphics/PointF;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v4           #ptAppend:Landroid/graphics/PointF;
    :cond_0
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v10, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 328
    .restart local v4       #ptAppend:Landroid/graphics/PointF;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bHasStopSign:Z

    .line 333
    .end local v4           #ptAppend:Landroid/graphics/PointF;
    :cond_1
    const/4 v0, 0x1

    .line 343
    :cond_2
    return v0
.end method

.method public isHasStopSign()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bHasStopSign:Z

    return v0
.end method

.method public isStroking()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bIsStroking:Z

    return v0
.end method

.method public removeLastPoint()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    iput v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nPointCount:I

    .line 110
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bHasStopSign:Z

    .line 111
    iput-wide v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_lLastStrokeStopTime:J

    .line 112
    iput-wide v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_lStrokeStartTime:J

    .line 113
    return-void
.end method

.method public setDynamicWatingTimeEnable(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bEnableDynamicTime:Z

    .line 151
    return-void
.end method

.method public setPanelArea(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 249
    iput p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nStrokePanelW:I

    .line 250
    iput p2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nStrokePanelH:I

    .line 251
    return-void
.end method

.method public setSpeedLevel(I)V
    .locals 1
    .parameter "nLevel"

    .prologue
    .line 139
    mul-int/lit16 v0, p1, 0xc8

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nMaxInterval:I

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bAutoSpeed:Z

    .line 141
    return-void
.end method

.method public setStrokeLength(F)V
    .locals 0
    .parameter "length"

    .prologue
    .line 258
    iput p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nStrokelength:F

    .line 259
    return-void
.end method

.method public startStroke()V
    .locals 5

    .prologue
    .line 172
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_lStrokeStartTime:J

    .line 175
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bAutoSpeed:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_lLastStrokeStopTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayAutoSpeed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayAutoSpeed:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_lLastStrokeStopTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bIsStroking:Z

    .line 181
    return-void
.end method

.method public stopStroke()V
    .locals 17

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 191
    new-instance v10, Landroid/graphics/PointF;

    const/high16 v13, -0x4080

    const/high16 v14, -0x4080

    invoke-direct {v10, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 192
    .local v10, ptAppend:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v10           #ptAppend:Landroid/graphics/PointF;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bAutoSpeed:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayAutoSpeed:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/16 v14, 0x14

    if-ne v13, v14, :cond_3

    .line 203
    const-wide/16 v4, 0x0

    .line 204
    .local v4, lSum:J
    const/4 v9, 0x1

    .line 205
    .local v9, nMaxInterval:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v13, 0x14

    if-ge v3, v13, :cond_1

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_arrayAutoSpeed:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    add-long/2addr v4, v13

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_1
    const-wide/16 v13, 0x14

    div-long v13, v4, v13

    long-to-int v8, v13

    .line 210
    .local v8, nAverage:I
    rem-int/lit16 v13, v8, 0xc8

    sub-int v13, v8, v13

    add-int/lit16 v9, v13, 0x190

    .line 211
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nMaxInterval:I

    if-ge v9, v13, :cond_2

    .line 212
    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nMaxInterval:I

    .line 213
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_configData:Lcom/htc/android/htcime/util/ConfigData;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nMaxInterval:I

    div-int/lit16 v15, v15, 0xc8

    invoke-virtual {v13, v14, v15}, Lcom/htc/android/htcime/util/ConfigData;->setStrokeSpeed(Landroid/content/Context;I)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_configData:Lcom/htc/android/htcime/util/ConfigData;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_context:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/htc/android/htcime/util/ConfigData;->setUserAdjustStrokeSpeed(Landroid/content/Context;I)Z

    .line 215
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bAutoSpeed:Z

    .line 220
    .end local v3           #i:I
    .end local v4           #lSum:J
    .end local v8           #nAverage:I
    .end local v9           #nMaxInterval:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bEnableDynamicTime:Z

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nPointCount:I

    if-lez v13, :cond_5

    .line 222
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nStrokelength:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_5

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_lStrokeStartTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_5

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_lStrokeStartTime:J

    sub-long v1, v13, v15

    .line 224
    .local v1, Strokeinterval:J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nStrokelength:F

    float-to-double v13, v13

    long-to-double v15, v1

    div-double v11, v13, v15

    .line 225
    .local v11, speed:D
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getMaxdistance()D

    move-result-wide v6

    .line 227
    .local v6, maxdistance:D
    div-double v13, v6, v11

    double-to-int v9, v13

    .line 229
    .restart local v9       #nMaxInterval:I
    const/16 v13, 0x3e8

    if-le v9, v13, :cond_6

    .line 230
    const/16 v9, 0x3e8

    .line 234
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_nMaxInterval:I

    .line 240
    .end local v1           #Strokeinterval:J
    .end local v6           #maxdistance:D
    .end local v9           #nMaxInterval:I
    .end local v11           #speed:D
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_bIsStroking:Z

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->m_lLastStrokeStopTime:J

    .line 242
    return-void

    .line 231
    .restart local v1       #Strokeinterval:J
    .restart local v6       #maxdistance:D
    .restart local v9       #nMaxInterval:I
    .restart local v11       #speed:D
    :cond_6
    const/16 v13, 0xc8

    if-ge v9, v13, :cond_4

    .line 232
    const/16 v9, 0xc8

    goto :goto_1
.end method
