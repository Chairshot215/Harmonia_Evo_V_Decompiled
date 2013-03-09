.class public Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;
.super Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;
.source "RingSlideAnimator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RingSlideAnimator"


# instance fields
.field private currScreenCount:I

.field private currentFrame:F

.field public localLOGD:Z

.field private mLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

.field private mRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

.field private mSinkLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

.field private mSinkRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;I)V
    .locals 1
    .parameter "fxWorkspace"
    .parameter "slideControl"
    .parameter "screenCount"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;I)V

    .line 13
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->localLOGD:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getInitialFrame(I)F
    .locals 2
    .parameter "defaultScreenIndex"

    .prologue
    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 152
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v0, v0

    return v0
.end method

.method public getMarkerLength(Lcom/htc/fusion/fx/Marker;)I
    .locals 2
    .parameter "marker"

    .prologue
    .line 147
    iget v0, p1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iget v1, p1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected initMarkers(I)V
    .locals 9
    .parameter "screenCount"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "RingSlideAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init screen count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->currScreenCount:I

    .line 33
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/htc/fusion/fx/Marker;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    .line 34
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/htc/fusion/fx/Marker;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    .line 36
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/htc/fusion/fx/Marker;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    .line 37
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/htc/fusion/fx/Marker;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    .line 39
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "0to1"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v4

    .line 40
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "1to2"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v5

    .line 41
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "2to3"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v6

    .line 42
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "3to4"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v7

    .line 43
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "4to5"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v8

    .line 44
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "5to6"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 45
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "6to7"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 46
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "7to0"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 48
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "1to0"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v4

    .line 49
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "2to1"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v5

    .line 50
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "3to2"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v6

    .line 51
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "4to3"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v7

    .line 52
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "5to4"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v8

    .line 53
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "6to5"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 54
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "7to6"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 55
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "0to7"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "s_0to1"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v4

    .line 58
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "s_1to2"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v5

    .line 59
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "s_2to3"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v6

    .line 60
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "s_3to4"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v7

    .line 61
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "s_4to5"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v8

    .line 62
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "s_5to6"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 63
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "s_6to7"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "s_7to0"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "s_1to0"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v4

    .line 67
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "s_2to1"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v5

    .line 68
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "s_3to2"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v6

    .line 69
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "s_4to3"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v7

    .line 70
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "s_5to4"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    aput-object v1, v0, v8

    .line 71
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "s_6to5"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 72
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "s_7to6"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "s_0to7"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 74
    return-void
.end method

.method public scrollXToFrame(FILcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;)F
    .locals 9
    .parameter "scrollX"
    .parameter "screenWidth"
    .parameter "direction"
    .parameter "snapInfo"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, -0x1

    .line 80
    if-nez p2, :cond_0

    .line 81
    const-string v4, "RingSlideAnimator"

    const-string v5, "invalid screenWidth"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v4, 0x0

    .line 136
    :goto_0
    return v4

    .line 85
    :cond_0
    int-to-float v4, p2

    div-float v4, p1, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 88
    .local v0, currentScreen:I
    move v3, p1

    .line 89
    .local v3, shiftX:F
    :goto_1
    int-to-float v4, p2

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    .line 90
    int-to-float v4, p2

    sub-float/2addr v3, v4

    goto :goto_1

    .line 93
    :cond_1
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_2

    .line 94
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    array-length v4, v4

    rem-int/2addr v0, v4

    .line 98
    :cond_2
    :try_start_0
    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->LEFT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    if-ne p3, v4, :cond_5

    .line 99
    iget v4, p4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->snapOffset:I

    if-lt v4, v8, :cond_3

    iget-boolean v4, p4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->isSnap:Z

    if-nez v4, :cond_3

    iget v4, p4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->end:I

    if-eq v4, v6, :cond_3

    .line 100
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    aget-object v1, v4, v0

    .line 105
    .local v1, marker:Lcom/htc/fusion/fx/Marker;
    :goto_2
    if-ne v0, v7, :cond_4

    .line 106
    int-to-float v4, p2

    div-float v4, v3, v4

    invoke-virtual {p0, v1}, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->getMarkerLength(Lcom/htc/fusion/fx/Marker;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->currentFrame:F

    .line 112
    :goto_3
    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->currentFrame:F

    goto :goto_0

    .line 102
    .end local v1           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_3
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mLeftTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    aget-object v1, v4, v0

    .restart local v1       #marker:Lcom/htc/fusion/fx/Marker;
    goto :goto_2

    .line 108
    :cond_4
    int-to-float v4, p2

    div-float v4, v3, v4

    invoke-virtual {p0, v1}, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->getMarkerLength(Lcom/htc/fusion/fx/Marker;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->currentFrame:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 132
    .end local v1           #marker:Lcom/htc/fusion/fx/Marker;
    :catch_0
    move-exception v2

    .line 133
    .local v2, npe:Ljava/lang/NullPointerException;
    const-string v4, "RingSlideAnimator"

    const-string v5, "marker in null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 136
    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->currentFrame:F

    goto :goto_0

    .line 114
    .end local v2           #npe:Ljava/lang/NullPointerException;
    :cond_5
    :try_start_1
    iget v4, p4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->snapOffset:I

    if-lt v4, v8, :cond_6

    iget-boolean v4, p4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->isSnap:Z

    if-nez v4, :cond_6

    iget v4, p4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->end:I

    if-eq v4, v6, :cond_6

    .line 115
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mSinkRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    aget-object v1, v4, v0

    .line 121
    .restart local v1       #marker:Lcom/htc/fusion/fx/Marker;
    :goto_4
    if-ne v0, v7, :cond_7

    .line 122
    const-string v4, "RingSlideAnimator"

    const-string v5, "Direction.RIGHT 7->6 happen"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    int-to-float v4, p2

    sub-float/2addr v4, v3

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-virtual {p0, v1}, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->getMarkerLength(Lcom/htc/fusion/fx/Marker;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->currentFrame:F

    .line 130
    :goto_5
    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->currentFrame:F

    goto/16 :goto_0

    .line 117
    .end local v1           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_6
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->mRightTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    aget-object v1, v4, v0

    .restart local v1       #marker:Lcom/htc/fusion/fx/Marker;
    goto :goto_4

    .line 126
    :cond_7
    int-to-float v4, p2

    sub-float/2addr v4, v3

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-virtual {p0, v1}, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->getMarkerLength(Lcom/htc/fusion/fx/Marker;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->currentFrame:F
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public updateScreenCount(I)V
    .locals 0
    .parameter "screenCount"

    .prologue
    .line 143
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/RingSlideAnimator;->currScreenCount:I

    .line 144
    return-void
.end method
