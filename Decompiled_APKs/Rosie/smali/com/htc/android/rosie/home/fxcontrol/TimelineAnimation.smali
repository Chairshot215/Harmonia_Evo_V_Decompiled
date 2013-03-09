.class final Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;
.super Ljava/lang/Object;
.source "TimelineAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAnimListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDuration:F

.field private final mEndFrame:F

.field private mFrame:F

.field private final mId:Ljava/lang/String;

.field private mPlaybackListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

.field private mPlaybackMode:I

.field private mSpeed:F

.field private final mStartFrame:F

.field private final mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;FF)V
    .locals 1
    .parameter "timeline"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;FFLjava/lang/String;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;FFLjava/lang/String;)V
    .locals 1
    .parameter "timeline"
    .parameter "start"
    .parameter "end"
    .parameter "id"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mSpeed:F

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackMode:I

    .line 52
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 53
    iput p2, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mStartFrame:F

    .line 54
    iput p3, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mEndFrame:F

    .line 55
    sub-float v0, p3, p2

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mDuration:F

    .line 56
    iput-object p4, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;)V
    .locals 3
    .parameter "timeline"
    .parameter "marker"

    .prologue
    .line 60
    iget v0, p2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v0, v0

    iget v1, p2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v1, v1

    iget-object v2, p2, Lcom/htc/fusion/fx/Marker;->Name:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;FFLjava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/Marker;Lcom/htc/fusion/fx/Marker;)V
    .locals 4
    .parameter "timeline"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 64
    iget v0, p2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v0, v0

    iget v1, p3, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/htc/fusion/fx/Marker;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/htc/fusion/fx/Marker;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;-><init>(Lcom/htc/fusion/fx/FxTimelineControl;FFLjava/lang/String;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCurrentFrame()F
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getFrame()F

    move-result v0

    return v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mDuration:F

    return v0
.end method

.method public getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;
    .locals 1
    .parameter "name"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackMode()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackMode:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mSpeed:F

    return v0
.end method

.method public getTimeline()Lcom/htc/fusion/fx/FxTimelineControl;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    return-object v0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mStartFrame:F

    float-to-int v0, v0

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mEndFrame:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->play(II)V

    .line 111
    return-void
.end method

.method public play(II)V
    .locals 7
    .parameter "from"
    .parameter "to"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-interface {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;->onBegin(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V

    .line 117
    :cond_0
    const-string v0, "DEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimelineAnimation.play("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mId:Ljava/lang/String;

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackMode:I

    iget v5, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mSpeed:F

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v2, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fusion/fx/FxTimelineControl;->playWithName(Ljava/lang/String;IIIFZ)V

    .line 119
    return-void

    .line 118
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public playTo(I)V
    .locals 7
    .parameter "frame"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    invoke-interface {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;->onBegin(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mId:Ljava/lang/String;

    iget v2, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mFrame:F

    float-to-int v2, v2

    iget v4, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackMode:I

    iget v5, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mSpeed:F

    iget-object v3, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fusion/fx/FxTimelineControl;->playWithName(Ljava/lang/String;IIIFZ)V

    .line 126
    return-void

    .line 125
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public rewind()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mStartFrame:F

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 139
    return-void
.end method

.method public setFrame(F)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 129
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mFrame:F

    .line 130
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 131
    return-void
.end method

.method public setPlaybackListener(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    .line 93
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackListener:Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$OnAnimListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mAnimListener:Lcom/htc/fusion/fx/MessageListener;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$1;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mAnimListener:Lcom/htc/fusion/fx/MessageListener;

    .line 100
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mAnimListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setPlaybackMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 76
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mPlaybackMode:I

    .line 77
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 84
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mSpeed:F

    .line 85
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/TimelineAnimation;->mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 135
    return-void
.end method
