.class public Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;
.super Ljava/lang/Object;
.source "PageSinkControl.java"

# interfaces
.implements Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MARKER_Z_MOVE:Ljava/lang/String; = "z_move"


# instance fields
.field private mAccelerator:Landroid/view/animation/AccelerateInterpolator;

.field private mCurrentFrame:F

.field private mCurrentPi:F

.field private mCurrentSink:F

.field private mEndFrame:I

.field private mFrameCount:I

.field private mProgress:F

.field private mSinkExtent:F

.field private mStartFrame:I

.field private mStartPi:F

.field private mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mToSink:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 4
    .parameter "timeline"

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mSinkExtent:F

    .line 21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mToSink:Z

    .line 23
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mProgress:F

    .line 24
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentSink:F

    .line 25
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentFrame:F

    .line 27
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartPi:F

    .line 28
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentPi:F

    .line 30
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mAccelerator:Landroid/view/animation/AccelerateInterpolator;

    .line 34
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 35
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v1, :cond_0

    .line 36
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "timeline not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "z_move"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 41
    .local v0, m:Lcom/htc/fusion/fx/Marker;
    if-nez v0, :cond_1

    .line 42
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "marker not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_1
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartFrame:I

    .line 47
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mEndFrame:I

    .line 48
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mEndFrame:I

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartFrame:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mFrameCount:I

    .line 49
    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sink Marker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/fusion/fx/Marker;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mEndFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSink(F)F
    .locals 8
    .parameter "progress"

    .prologue
    .line 110
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    .line 112
    :cond_0
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartPi:F

    float-to-double v0, v0

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L

    iget v6, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartPi:F

    float-to-double v6, v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentPi:F

    .line 113
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentPi:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private updateSinkFrame()V
    .locals 5

    .prologue
    .line 117
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 120
    :cond_0
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartFrame:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mFrameCount:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentSink:F

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mSinkExtent:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 122
    .local v0, frame:F
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentFrame:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 125
    :cond_1
    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentFrame:F

    goto :goto_0
.end method


# virtual methods
.method public getSink()F
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentSink:F

    return v0
.end method

.method public isSinking()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mToSink:Z

    return v0
.end method

.method public playSink(F)V
    .locals 6
    .parameter "speed"

    .prologue
    const/4 v3, 0x0

    .line 135
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentSink:F

    .line 136
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "playSink"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartFrame:I

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mEndFrame:I

    move v4, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    .line 140
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentSink:F

    .line 100
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->updateSinkFrame()V

    .line 101
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mSinkExtent:F

    .line 102
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentFrame:F

    .line 103
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mProgress:F

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mToSink:Z

    .line 105
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartPi:F

    .line 106
    iput v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentPi:F

    .line 107
    return-void
.end method

.method public setScrollProgress(F)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 84
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mProgress:F

    .line 85
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mProgress:F

    invoke-direct {p0, v1}, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->getSink(F)F

    move-result v0

    .line 86
    .local v0, newSink:F
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentSink:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentSink:F

    .line 90
    invoke-direct {p0}, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->updateSinkFrame()V

    goto :goto_0
.end method

.method public startRise()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mToSink:Z

    .line 74
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentPi:F

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartPi:F

    .line 75
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRise from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartPi:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public startSink(F)V
    .locals 6
    .parameter "extent"

    .prologue
    const-wide v4, 0x400921fb54442d18L

    .line 57
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 p1, 0x3f80

    .line 58
    :cond_0
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mSinkExtent:F

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mToSink:Z

    .line 61
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mCurrentPi:F

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartPi:F

    .line 62
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartPi:F

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_2

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartPi:F

    .line 68
    :cond_1
    :goto_0
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSink: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartPi:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 64
    :cond_2
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartPi:F

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 65
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartPi:F

    float-to-double v0, v0

    sub-double v0, v4, v0

    double-to-float v0, v0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSinkControl;->mStartPi:F

    goto :goto_0
.end method
