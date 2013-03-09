.class public Lcom/htc/idlescreen/base/widget/IdleDragAnimation;
.super Ljava/lang/Object;
.source "IdleDragAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/widget/IdleDragAnimation$1;,
        Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimeListener;,
        Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;
    }
.end annotation


# static fields
.field private static final DELTA_Z:F = 0.1f

.field private static final LOG_PREFIX:Ljava/lang/String; = "IdleDragAnime"


# instance fields
.field private mAbove:Z

.field private mAnimeListener:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimeListener;

.field private mCallback:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;

.field private mMarker:Lcom/htc/fusion/fx/Marker;

.field private mNotInDrag:Z

.field private mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;ZLcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;)V
    .locals 3
    .parameter "tl"
    .parameter "marker"
    .parameter "notInDrag"
    .parameter "callback"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mAbove:Z

    .line 60
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimeListener;-><init>(Lcom/htc/idlescreen/base/widget/IdleDragAnimation;Lcom/htc/idlescreen/base/widget/IdleDragAnimation$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mAnimeListener:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimeListener;

    .line 25
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 26
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mMarker:Lcom/htc/fusion/fx/Marker;

    .line 27
    iput-boolean p3, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mNotInDrag:Z

    .line 28
    iput-object p4, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mCallback:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;

    .line 29
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mMarker:Lcom/htc/fusion/fx/Marker;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the marker can\'t be found. marker:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->clearAnimation()V

    .line 33
    return-void
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/widget/IdleDragAnimation;)Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mCallback:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;

    return-object v0
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 45
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mNotInDrag:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mAnimeListener:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimeListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 37
    return-void
.end method

.method public startPlay(Ljava/lang/String;)V
    .locals 3
    .parameter "requestCode"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mNotInDrag:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mCallback:Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleDragAnimation$AnimationCallback;->SetDragVisible(Z)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 57
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mMarker:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mMarker:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playWithName(Ljava/lang/String;II)V

    .line 58
    return-void
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/IdleDragAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 41
    return-void
.end method
