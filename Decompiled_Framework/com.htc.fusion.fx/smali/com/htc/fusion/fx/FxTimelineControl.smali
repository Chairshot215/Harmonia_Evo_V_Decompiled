.class public Lcom/htc/fusion/fx/FxTimelineControl;
.super Lcom/htc/fusion/fx/FxNodeControl;
.source "FxTimelineControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/FxTimelineControl$1;,
        Lcom/htc/fusion/fx/FxTimelineControl$FreezeFuture;
    }
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxNodeControl;-><init>(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/fusion/fx/FxTimelineControl;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/fusion/fx/FxTimelineControl;->waitForPendingFreezes(J)Z

    move-result v0

    return v0
.end method

.method private native freezeNative(F)V
.end method

.method private native waitForPendingFreezes(J)Z
.end method


# virtual methods
.method public native containsMarker(Ljava/lang/String;)Z
.end method

.method public freeze()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->freezeNative(F)V

    new-instance v0, Lcom/htc/fusion/fx/FxTimelineControl$FreezeFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/fusion/fx/FxTimelineControl$FreezeFuture;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl$1;)V

    return-object v0
.end method

.method public freeze(F)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->freezeNative(F)V

    new-instance v0, Lcom/htc/fusion/fx/FxTimelineControl$FreezeFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/fusion/fx/FxTimelineControl$FreezeFuture;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl$1;)V

    return-object v0
.end method

.method public native getFrame()F
.end method

.method public native getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;
.end method

.method public native getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end method

.method public native isPlaying()Z
.end method

.method public playFrames(II)V
    .locals 6

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    return-void
.end method

.method public playFrames(IIIFZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZI)V

    return-void
.end method

.method public playFrames(IIIFZI)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZII)V

    return-void
.end method

.method public native playFrames(IIIFZII)V
.end method

.method public playMarker(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    return-void
.end method

.method public playMarker(Ljava/lang/String;IFZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZI)V

    return-void
.end method

.method public playMarker(Ljava/lang/String;IFZI)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZII)V

    return-void
.end method

.method public native playMarker(Ljava/lang/String;IFZII)V
.end method

.method public playWithName(Ljava/lang/String;II)V
    .locals 8

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fusion/fx/FxTimelineControl;->playWithName(Ljava/lang/String;IIIFZI)V

    return-void
.end method

.method public playWithName(Ljava/lang/String;IIIFZ)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/htc/fusion/fx/FxTimelineControl;->playWithName(Ljava/lang/String;IIIFZI)V

    return-void
.end method

.method public playWithName(Ljava/lang/String;IIIFZI)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/htc/fusion/fx/FxTimelineControl;->playWithName(Ljava/lang/String;IIIFZII)V

    return-void
.end method

.method public native playWithName(Ljava/lang/String;IIIFZII)V
.end method

.method public native pulseFreeze()V
.end method

.method public native setAsync(Z)V
.end method

.method public native setFrame(F)V
.end method

.method public native stop()V
.end method

.method public thaw()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->thaw(Z)V

    return-void
.end method

.method public native thaw(Z)V
.end method
