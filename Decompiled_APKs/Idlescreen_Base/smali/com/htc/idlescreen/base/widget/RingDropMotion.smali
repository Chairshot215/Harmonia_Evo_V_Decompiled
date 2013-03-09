.class public Lcom/htc/idlescreen/base/widget/RingDropMotion;
.super Ljava/lang/Object;
.source "RingDropMotion.java"


# instance fields
.field private final mDrop:Lcom/htc/fusion/fx/Marker;

.field private final mDropIndicate:Lcom/htc/fusion/fx/Marker;

.field private final mDropOut:Lcom/htc/fusion/fx/Marker;

.field private final mDropOver:Lcom/htc/fusion/fx/Marker;

.field private mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method private constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;Lcom/htc/fusion/fx/Marker;Lcom/htc/fusion/fx/Marker;Lcom/htc/fusion/fx/Marker;)V
    .locals 0
    .parameter "timeline"
    .parameter "over"
    .parameter "out"
    .parameter "indicate"
    .parameter "drop"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 41
    iput-object p2, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mDropOver:Lcom/htc/fusion/fx/Marker;

    .line 42
    iput-object p3, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mDropOut:Lcom/htc/fusion/fx/Marker;

    .line 43
    iput-object p4, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mDropIndicate:Lcom/htc/fusion/fx/Marker;

    .line 44
    iput-object p5, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mDrop:Lcom/htc/fusion/fx/Marker;

    .line 45
    return-void
.end method

.method public static getRingDropMotion(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/idlescreen/base/widget/RingDropMotion;
    .locals 6
    .parameter "timeline"
    .parameter "over"
    .parameter "out"
    .parameter "indicate"
    .parameter "drop"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    .line 21
    .local v2, dropOverTL:Lcom/htc/fusion/fx/Marker;
    invoke-virtual {p0, p2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v3

    .line 22
    .local v3, dropOutTL:Lcom/htc/fusion/fx/Marker;
    invoke-virtual {p0, p3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v4

    .line 23
    .local v4, dropIndicateTL:Lcom/htc/fusion/fx/Marker;
    invoke-virtual {p0, p4}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v5

    .line 24
    .local v5, dropTL:Lcom/htc/fusion/fx/Marker;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 28
    new-instance v0, Lcom/htc/idlescreen/base/widget/RingDropMotion;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/idlescreen/base/widget/RingDropMotion;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;Lcom/htc/fusion/fx/Marker;Lcom/htc/fusion/fx/Marker;Lcom/htc/fusion/fx/Marker;)V

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public drop()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "drop"

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mDrop:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mDrop:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playWithName(Ljava/lang/String;II)V

    .line 57
    return-void
.end method

.method public dropIndicate()V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "Drop_indicate"

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mDropIndicate:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mDropIndicate:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playWithName(Ljava/lang/String;II)V

    .line 61
    return-void
.end method

.method public dropOut()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "drop_out"

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mDropOut:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mDropOut:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playWithName(Ljava/lang/String;II)V

    .line 53
    return-void
.end method

.method public dropOver()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "drop_over"

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mDropOver:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/RingDropMotion;->mDropOver:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playWithName(Ljava/lang/String;II)V

    .line 49
    return-void
.end method
