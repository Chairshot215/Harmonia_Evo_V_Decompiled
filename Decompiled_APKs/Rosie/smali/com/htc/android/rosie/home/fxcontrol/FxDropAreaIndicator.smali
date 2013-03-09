.class public Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;
.super Ljava/lang/Object;
.source "FxDropAreaIndicator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FxDropAreaIndicator"


# instance fields
.field private final MARKER_DROPAREA_LOCATION:Ljava/lang/String;

.field private final MARKER_INVALID_IN:Ljava/lang/String;

.field private final MARKER_INVALID_OUT:Ljava/lang/String;

.field private final MARKER_VALID_IN:Ljava/lang/String;

.field private final MARKER_VALID_OUT:Ljava/lang/String;

.field private final TIMELINECONTROL_DROPAREA:Ljava/lang/String;

.field private final cellHeight:I

.field private final cellWidth:I

.field private mContext:Landroid/content/Context;

.field private mDropAreaPositionMarkers:[Lcom/htc/fusion/fx/Marker;

.field private mDropAreaTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mIsValid:Z

.field private mLastX:I

.field private mLastY:I

.field private mParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field private mScene:Lcom/htc/fusion/fx/FxScene;

.field private mSpanX:I

.field private mSpanY:I

.field private mVisibility:Z


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/FxSceneContainer;Landroid/content/Context;)V
    .locals 4
    .parameter "parent"
    .parameter "context"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 21
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mIsValid:Z

    .line 22
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mVisibility:Z

    .line 23
    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mLastX:I

    .line 24
    iput v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mLastY:I

    .line 28
    iput v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->cellWidth:I

    .line 29
    iput v3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->cellHeight:I

    .line 31
    const-string v0, "timeline.droptarget%dx%d"

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->TIMELINECONTROL_DROPAREA:Ljava/lang/String;

    .line 32
    const-string v0, "p_%02d"

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->MARKER_DROPAREA_LOCATION:Ljava/lang/String;

    .line 33
    const-string v0, "highliight_in"

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->MARKER_VALID_IN:Ljava/lang/String;

    .line 34
    const-string v0, "highliight_out"

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->MARKER_VALID_OUT:Ljava/lang/String;

    .line 35
    const-string v0, "red_in"

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->MARKER_INVALID_IN:Ljava/lang/String;

    .line 36
    const-string v0, "red_out"

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->MARKER_INVALID_OUT:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 40
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public loadScene(II)V
    .locals 13
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 44
    const/4 v9, 0x1

    if-lt p1, v9, :cond_0

    const/4 v9, 0x1

    if-ge p2, v9, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060014

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, m10s:[Ljava/lang/String;
    add-int/lit8 v9, p1, -0x1

    mul-int/lit8 v9, v9, 0x4

    add-int/lit8 v10, p2, -0x1

    add-int/2addr v9, v10

    aget-object v6, v4, v9

    .line 49
    .local v6, path:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/launcher/Launcher;->getFxPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 50
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v9, :cond_2

    .line 51
    const-string v9, "FxDropAreaIndicator"

    const-string v10, "mScene = null"

    invoke-static {v9, v10}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mSpanX:I

    .line 55
    iput p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mSpanY:I

    .line 57
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mLastX:I

    .line 58
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mLastY:I

    .line 59
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mIsValid:Z

    .line 61
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 63
    const-string v9, "timeline.droptarget%dx%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mSpanX:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mSpanY:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, controlName:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v9

    check-cast v9, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mDropAreaTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 66
    iget v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mSpanX:I

    rsub-int/lit8 v9, v9, 0x4

    add-int/lit8 v1, v9, 0x1

    .line 67
    .local v1, countX:I
    iget v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mSpanY:I

    rsub-int/lit8 v9, v9, 0x4

    add-int/lit8 v2, v9, 0x1

    .line 68
    .local v2, countY:I
    mul-int v9, v1, v2

    new-array v9, v9, [Lcom/htc/fusion/fx/Marker;

    iput-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mDropAreaPositionMarkers:[Lcom/htc/fusion/fx/Marker;

    .line 70
    const/4 v7, 0x0

    .local v7, x:I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 71
    const/4 v8, 0x0

    .local v8, y:I
    :goto_2
    if-ge v8, v2, :cond_4

    .line 72
    iget v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mSpanX:I

    rsub-int/lit8 v9, v9, 0x4

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v8

    add-int v3, v9, v7

    .line 73
    .local v3, index:I
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mDropAreaPositionMarkers:[Lcom/htc/fusion/fx/Marker;

    array-length v9, v9

    if-lt v3, v9, :cond_3

    .line 71
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 76
    :cond_3
    const-string v9, "p_%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    add-int/lit8 v12, v3, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, markerName:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mDropAreaPositionMarkers:[Lcom/htc/fusion/fx/Marker;

    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v10, v5}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v10

    aput-object v10, v9, v3

    goto :goto_3

    .line 70
    .end local v3           #index:I
    .end local v5           #markerName:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public removeScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mParent:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 90
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 91
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mDropAreaPositionMarkers:[Lcom/htc/fusion/fx/Marker;

    .line 92
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mDropAreaTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    goto :goto_0
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mVisibility:Z

    .line 148
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public showDropArea(IIZ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "valid"

    .prologue
    const/4 v2, 0x1

    .line 96
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mVisibility:Z

    if-nez v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 102
    iput-boolean v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mVisibility:Z

    .line 105
    :cond_2
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mLastX:I

    if-ne p1, v1, :cond_3

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mLastY:I

    if-ne p2, v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mIsValid:Z

    if-eq p3, v1, :cond_0

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mDropAreaTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v1, :cond_4

    .line 110
    const-string v1, "FxDropAreaIndicator"

    const-string v2, "mDropAreaTimelineControl is empty"

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_4
    iget-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mIsValid:Z

    if-eqz v1, :cond_6

    .line 116
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mDropAreaTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "highliight_out"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 121
    :goto_1
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mSpanX:I

    rsub-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, p2

    add-int v0, v1, p1

    .line 122
    .local v0, index:I
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mDropAreaPositionMarkers:[Lcom/htc/fusion/fx/Marker;

    array-length v1, v1

    if-lt v0, v1, :cond_7

    .line 123
    :cond_5
    const-string v1, "FxDropAreaIndicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find marker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v0           #index:I
    :cond_6
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mDropAreaTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "red_out"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    .restart local v0       #index:I
    :cond_7
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mDropAreaPositionMarkers:[Lcom/htc/fusion/fx/Marker;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 129
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mLastX:I

    .line 130
    iput p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mLastY:I

    .line 131
    iput-boolean p3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mIsValid:Z

    .line 134
    iget-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mIsValid:Z

    if-eqz v1, :cond_8

    .line 135
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mDropAreaTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "highliight_in"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_8
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxDropAreaIndicator;->mDropAreaTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "red_in"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
