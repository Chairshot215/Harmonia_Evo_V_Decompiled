.class public Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;
.super Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;
.source "PageSlideAnimator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PageSlideAnimator"


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;I)V
    .locals 0
    .parameter "fxWorkspace"
    .parameter "slideControl"
    .parameter "screenCount"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;I)V

    .line 15
    return-void
.end method


# virtual methods
.method protected initMarkers(I)V
    .locals 4
    .parameter "screenCount"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "0toE_back"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 19
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "0to1"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 20
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "1to2"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 21
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "2to3"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 22
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "3to4"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 23
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "4to5"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 24
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "5to6"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 25
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "6toE_forward"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    aput-object v2, v0, v1

    .line 26
    return-void
.end method

.method public scrollXToFrame(FILcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;)F
    .locals 7
    .parameter "scrollX"
    .parameter "screenWidth"
    .parameter "direction"
    .parameter "snapInfo"

    .prologue
    .line 31
    int-to-float v3, p2

    div-float v3, p1, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    .line 33
    .local v0, currentScreen:I
    move v2, p1

    .line 34
    .local v2, shiftX:F
    :goto_0
    int-to-float v3, p2

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    .line 35
    int-to-float v3, p2

    sub-float/2addr v2, v3

    goto :goto_0

    .line 37
    :cond_0
    sget-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "PageSlideAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollXToFrame("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->isSnap:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), currentScreen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", shiftX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_1
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mTranslationMarkers:[Lcom/htc/fusion/fx/Marker;

    aget-object v1, v3, v0

    .line 41
    .local v1, marker:Lcom/htc/fusion/fx/Marker;
    iget-boolean v3, p4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->isSnap:Z

    if-nez v3, :cond_2

    .line 42
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    int-to-float v4, p2

    div-float v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->setPanFrame(F)V

    .line 47
    :goto_1
    iget v3, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iget v4, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v4, p2

    div-float/2addr v3, v4

    iget v4, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    return v3

    .line 44
    :cond_2
    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/PageSlideAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget v4, p4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->begin:I

    iget v5, p4, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;->end:I

    float-to-int v6, p1

    invoke-virtual {v3, v4, v5, p2, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->setPageSlideZFrame(IIII)V

    goto :goto_1
.end method

.method public updateScreenCount(I)V
    .locals 0
    .parameter "newScreenCount"

    .prologue
    .line 54
    return-void
.end method
