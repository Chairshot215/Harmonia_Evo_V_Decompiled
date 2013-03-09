.class public Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;
.super Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;
.source "ScrollbarAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$1;,
        Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private currScreenCount:I

.field private currentScreen:I

.field private junction:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

.field private junction_long:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

.field private junction_middle:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

.field private junction_short:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

.field public localLOGD:Z

.field private mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

.field private mainline:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

.field private mainlineLength:I

.field private markerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;I)V
    .locals 1
    .parameter "fxWorkspace"
    .parameter "scrollControl"
    .parameter "screenCount"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/rosie/home/fxcontrol/SlideAnimator;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxTimelineControl;I)V

    .line 14
    const-string v0, "ScrollbarAnimator"

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->LOG_TAG:Ljava/lang/String;

    .line 15
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->localLOGD:Z

    .line 31
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized genMarker(I)V
    .locals 7
    .parameter "screenCount"

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currScreenCount:I

    .line 152
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->markerList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 153
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->markerList:Ljava/util/ArrayList;

    .line 157
    :goto_0
    const/4 v4, 0x1

    add-int/lit8 v5, p1, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 158
    .local v2, markerCount:I
    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mainlineLength:I

    div-int/2addr v4, v2

    int-to-float v3, v4

    .line 160
    .local v3, singleLength:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 161
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;-><init>(Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$1;)V

    .line 162
    .local v1, marker:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mainline:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget v4, v4, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    int-to-float v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, v1, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    .line 163
    iget v4, v1, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    add-float/2addr v4, v3

    iput v4, v1, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->endFrame:F

    .line 164
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->markerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-boolean v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->localLOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "ScrollbarAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "marker["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "start:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->endFrame:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    .end local v0           #i:I
    .end local v1           #marker:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;
    .end local v2           #markerCount:I
    .end local v3           #singleLength:F
    :cond_1
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->markerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 168
    .restart local v0       #i:I
    .restart local v2       #markerCount:I
    .restart local v3       #singleLength:F
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->markerList:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget-object v5, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mainline:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget v5, v5, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->endFrame:F

    iput v5, v4, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->endFrame:F

    .line 171
    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currScreenCount:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_3

    .line 172
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction_long:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :goto_2
    monitor-exit p0

    return-void

    .line 173
    :cond_3
    :try_start_2
    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currScreenCount:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_4

    .line 174
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction_short:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    goto :goto_2

    .line 176
    :cond_4
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction_middle:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iput-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public getInitialFrame(I)F
    .locals 4
    .parameter "defaultScreenIndex"

    .prologue
    const/4 v3, 0x0

    .line 180
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currScreenCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 181
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "ScrollbarAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInitialFrame--> currScreenCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currScreenCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " defaultScreenIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currScreenCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->markerList:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->endFrame:F

    .line 189
    :goto_0
    return v0

    .line 186
    :cond_1
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currScreenCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 187
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->markerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget v1, v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->markerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->getDuration()F

    move-result v0

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->markerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    goto :goto_0
.end method

.method public getJunctionFrame(Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;F)F
    .locals 6
    .parameter "marker"
    .parameter "scrollX"

    .prologue
    .line 93
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currScreenCount:I

    rsub-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getWidth()I

    move-result v4

    mul-int v1, v3, v4

    .line 94
    .local v1, junctionDist:I
    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currentScreen:I

    .line 97
    .local v2, lastPage:I
    if-nez v2, :cond_0

    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currScreenCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 98
    :cond_0
    iget v3, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currScreenCount:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    sub-float v3, p2, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->getDuration()F

    move-result v4

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    add-float v0, v3, v4

    .line 104
    .local v0, frame:F
    :goto_0
    return v0

    .line 100
    .end local v0           #frame:F
    :cond_1
    iget v3, p1, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->endFrame:F

    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7

    int-to-float v4, v4

    sub-float/2addr v4, p2

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->getDuration()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float v0, v3, v4

    .restart local v0       #frame:F
    goto :goto_0
.end method

.method protected initMarkers(I)V
    .locals 4
    .parameter "screenCount"

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "ScrollbarAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init screenCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "left"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "end"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "long"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "middle"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "short"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    invoke-direct {v0, p0, v3}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;-><init>(Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$1;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mainline:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    .line 116
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    invoke-direct {v0, p0, v3}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;-><init>(Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$1;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    .line 117
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    invoke-direct {v0, p0, v3}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;-><init>(Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$1;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction_long:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    .line 118
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    invoke-direct {v0, p0, v3}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;-><init>(Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$1;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction_middle:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    .line 119
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    invoke-direct {v0, p0, v3}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;-><init>(Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$1;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction_short:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    .line 121
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mainline:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "left"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    iput v1, v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    .line 122
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mainline:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "end"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    iput v1, v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->endFrame:F

    .line 123
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mainline:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget v0, v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->endFrame:F

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mainline:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget v1, v1, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mainlineLength:I

    .line 125
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction_long:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "long"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    iput v1, v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    .line 126
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction_long:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "long_1"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    iput v1, v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->endFrame:F

    .line 128
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction_middle:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "middle"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    iput v1, v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    .line 129
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction_middle:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "middle_1"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    iput v1, v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->endFrame:F

    .line 131
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction_short:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "short"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    iput v1, v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    .line 132
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction_short:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->mSlideControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "short_1"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    iput v1, v0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->endFrame:F

    .line 139
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->genMarker(I)V

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string v0, "ScrollbarAnimator"

    const-string v1, "some scrollbar marker missing!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public scrollXToFrame(FILcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$SnapInfo;)F
    .locals 8
    .parameter "scrollX"
    .parameter "screenWidth"
    .parameter "direction"
    .parameter "snapInfo"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x1

    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, currentFrame:F
    if-nez p2, :cond_0

    .line 41
    const-string v4, "ScrollbarAnimator"

    const-string v5, "invalid screenWidth"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v4, 0x0

    .line 88
    :goto_0
    return v4

    .line 45
    :cond_0
    int-to-float v4, p2

    div-float v4, p1, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 47
    .local v1, currentScreen:I
    move v3, p1

    .line 48
    .local v3, shiftX:F
    :goto_1
    int-to-float v4, p2

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    .line 49
    int-to-float v4, p2

    sub-float/2addr v3, v4

    goto :goto_1

    .line 55
    :cond_1
    sget-object v4, Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;->LEFT:Lcom/htc/android/rosie/home/fxcontrol/PageSlideControl$Direction;

    if-eq p3, v4, :cond_2

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currScreenCount:I

    if-ne v4, v6, :cond_7

    .line 57
    :cond_2
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->markerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_4

    .line 58
    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currScreenCount:I

    if-ne v4, v6, :cond_3

    const/4 v4, 0x6

    if-ne v1, v4, :cond_3

    .line 59
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->markerList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    .line 60
    .local v2, marker:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->getDuration()F

    move-result v4

    mul-float/2addr v4, v3

    div-float/2addr v4, v7

    int-to-float v5, p2

    div-float/2addr v4, v5

    iget v5, v2, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    add-float v0, v4, v5

    .end local v2           #marker:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;
    :goto_2
    move v4, v0

    .line 88
    goto :goto_0

    .line 63
    :cond_3
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    invoke-virtual {p0, v4, p1}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->getJunctionFrame(Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;F)F

    move-result v0

    goto :goto_2

    .line 66
    :cond_4
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->markerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    .line 67
    .restart local v2       #marker:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;
    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currScreenCount:I

    if-ne v4, v6, :cond_6

    .line 68
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->getDuration()F

    move-result v4

    mul-float/2addr v4, v3

    int-to-float v5, p2

    div-float/2addr v4, v5

    iget v5, v2, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->getDuration()F

    move-result v5

    div-float/2addr v5, v7

    add-float v0, v4, v5

    .line 69
    iget v4, v2, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->endFrame:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    .line 70
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    div-int/lit8 v5, p2, 0x2

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->getJunctionFrame(Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;F)F

    move-result v0

    .line 74
    :cond_5
    :goto_3
    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currentScreen:I

    goto :goto_2

    .line 73
    :cond_6
    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->getDuration()F

    move-result v4

    mul-float/2addr v4, v3

    int-to-float v5, p2

    div-float/2addr v4, v5

    iget v5, v2, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    add-float v0, v4, v5

    goto :goto_3

    .line 77
    .end local v2           #marker:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;
    :cond_7
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->markerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_8

    .line 78
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->junction:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    invoke-virtual {p0, v4, p1}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->getJunctionFrame(Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;F)F

    move-result v0

    goto :goto_2

    .line 81
    :cond_8
    iget-object v4, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->markerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;

    .line 82
    .restart local v2       #marker:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;
    iget v4, v2, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->endFrame:F

    int-to-float v5, p2

    sub-float/2addr v5, v3

    invoke-virtual {v2}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->getDuration()F

    move-result v6

    mul-float/2addr v5, v6

    int-to-float v6, p2

    div-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 83
    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->currentScreen:I

    goto :goto_2
.end method

.method public updateScreenCount(I)V
    .locals 3
    .parameter "screenCount"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "ScrollbarAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new screenCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;->genMarker(I)V

    .line 148
    return-void
.end method
