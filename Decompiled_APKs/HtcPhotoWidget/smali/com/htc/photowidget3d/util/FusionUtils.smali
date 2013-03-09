.class public Lcom/htc/photowidget3d/util/FusionUtils;
.super Ljava/lang/Object;
.source "FusionUtils.java"


# static fields
.field public static final FUSION_FRAME_END_OFFSET:I = -0x1

.field public static final FUSION_FRAME_INVALID:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backwardPlayMarker(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;IFZ)V
    .locals 7
    .parameter "node"
    .parameter "marker"
    .parameter "playbackMode"
    .parameter "playSpeed"
    .parameter "triggerEvent"

    .prologue
    .line 39
    if-nez p0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v6

    .line 43
    .local v6, mk:Lcom/htc/fusion/fx/Marker;
    if-eqz v6, :cond_0

    .line 46
    iget v2, v6, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 47
    .local v2, start:I
    iget v0, v6, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    add-int/lit8 v1, v0, -0x1

    .local v1, end:I
    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 49
    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    goto :goto_0
.end method

.method public static getMarkerEndFrame(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;)I
    .locals 2
    .parameter "node"
    .parameter "marker"

    .prologue
    const/4 v1, -0x1

    .line 54
    if-nez p0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 58
    .local v0, mk:Lcom/htc/fusion/fx/Marker;
    if-eqz v0, :cond_0

    .line 62
    iget v1, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    goto :goto_0
.end method

.method public static playLoadingMarker(Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 4
    .parameter "node"

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "loading_loop"

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    goto :goto_0
.end method

.method public static playMarker(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;IFZ)V
    .locals 7
    .parameter "node"
    .parameter "marker"
    .parameter "playbackMode"
    .parameter "playSpeed"
    .parameter "triggerEvent"

    .prologue
    .line 23
    if-nez p0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v6

    .line 27
    .local v6, mk:Lcom/htc/fusion/fx/Marker;
    if-eqz v6, :cond_0

    .line 30
    iget v1, v6, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    .line 31
    .local v1, start:I
    iget v0, v6, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    add-int/lit8 v2, v0, -0x1

    .local v2, end:I
    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 33
    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    goto :goto_0
.end method
