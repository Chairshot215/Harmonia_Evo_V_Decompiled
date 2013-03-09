.class public Lcom/htc/clock3dwidget/util/DigitControl;
.super Ljava/lang/Object;
.source "DigitControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock3dwidget/util/DigitControl$1;,
        Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = null

.field private static final TOTAL_FRAMES:I = 0xa

.field private static final localLOGV:Z


# instance fields
.field private mBottom_0:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mBottom_0_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mBottom_1:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mBottom_1_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mBottom_2:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mBottom_2_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mBottom_3:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mBottom_3_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mCurrentNumber:I

.field private mDestNumber:I

.field private mFlipControls:[[Lcom/htc/fusion/fx/FxTimelineControl;

.field private mFlipCount:I

.field private final mMaxNumber:I

.field private mNextNumber:I

.field private mPlaybackListener:Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;

.field private mPlaybackSpeed:F

.field private mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

.field private final mTilt:Lcom/htc/fusion/fx/Marker;

.field private mTop_0:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mTop_1:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mTop_2:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mTop_3:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/clock3dwidget/util/DigitControl;->$assertionsDisabled:Z

    .line 14
    const-class v0, Lcom/htc/clock3dwidget/util/DigitControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/clock3dwidget/util/DigitControl;->TAG:Ljava/lang/String;

    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;I)V
    .locals 9
    .parameter "timeline"
    .parameter "maxNumber"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v2, Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;-><init>(Lcom/htc/clock3dwidget/util/DigitControl;Lcom/htc/clock3dwidget/util/DigitControl$1;)V

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mPlaybackListener:Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;

    .line 39
    filled-new-array {v8, v5}, [I

    move-result-object v2

    const-class v3, Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mFlipControls:[[Lcom/htc/fusion/fx/FxTimelineControl;

    .line 40
    iput v4, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mFlipCount:I

    .line 41
    iput v4, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mNextNumber:I

    .line 46
    const/16 v2, 0x9

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "timeline.tile_flip_anim"

    aput-object v2, v0, v4

    const-string v2, "timeline.bottom_0"

    aput-object v2, v0, v6

    const-string v2, "timeline.bottom_1"

    aput-object v2, v0, v7

    const-string v2, "timeline.bottom_2"

    aput-object v2, v0, v5

    const-string v2, "timeline.bottom_3"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "timeline.top_0"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "timeline.top_1"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "timeline.top_2"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "timeline.top_3"

    aput-object v3, v0, v2

    .line 51
    .local v0, controls:[Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 53
    .local v1, objs:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v1, v4

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 54
    aget-object v2, v1, v6

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_0:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 55
    aget-object v2, v1, v7

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_1:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 56
    aget-object v2, v1, v5

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_2:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 57
    aget-object v2, v1, v8

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_3:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 58
    const/4 v2, 0x5

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mTop_0:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 59
    const/4 v2, 0x6

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mTop_1:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 60
    const/4 v2, 0x7

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mTop_2:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 61
    const/16 v2, 0x8

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mTop_3:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 63
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_0:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {p0, v2}, Lcom/htc/clock3dwidget/util/DigitControl;->setChild(Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 64
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_1:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {p0, v2}, Lcom/htc/clock3dwidget/util/DigitControl;->setChild(Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 65
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_2:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {p0, v2}, Lcom/htc/clock3dwidget/util/DigitControl;->setChild(Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 66
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_3:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {p0, v2}, Lcom/htc/clock3dwidget/util/DigitControl;->setChild(Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 67
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mTop_0:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {p0, v2}, Lcom/htc/clock3dwidget/util/DigitControl;->setChild(Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 68
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mTop_1:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {p0, v2}, Lcom/htc/clock3dwidget/util/DigitControl;->setChild(Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 69
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mTop_2:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {p0, v2}, Lcom/htc/clock3dwidget/util/DigitControl;->setChild(Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 70
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mTop_3:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {p0, v2}, Lcom/htc/clock3dwidget/util/DigitControl;->setChild(Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 72
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_0:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "timeline.am_pm"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_0_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 73
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_1:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "timeline.am_pm"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_1_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 74
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_2:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "timeline.am_pm"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_2_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 75
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_3:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "timeline.am_pm"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_3_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 77
    iput p2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mMaxNumber:I

    .line 79
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_0:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {p0, v2, v4}, Lcom/htc/clock3dwidget/util/DigitControl;->findFlipControls(Lcom/htc/fusion/fx/FxTimelineControl;I)V

    .line 80
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_1:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {p0, v2, v6}, Lcom/htc/clock3dwidget/util/DigitControl;->findFlipControls(Lcom/htc/fusion/fx/FxTimelineControl;I)V

    .line 81
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mTop_0:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {p0, v2, v7}, Lcom/htc/clock3dwidget/util/DigitControl;->findFlipControls(Lcom/htc/fusion/fx/FxTimelineControl;I)V

    .line 82
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mTop_1:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-direct {p0, v2, v5}, Lcom/htc/clock3dwidget/util/DigitControl;->findFlipControls(Lcom/htc/fusion/fx/FxTimelineControl;I)V

    .line 84
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "tilt"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mTilt:Lcom/htc/fusion/fx/Marker;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/htc/clock3dwidget/util/DigitControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mNextNumber:I

    return v0
.end method

.method static synthetic access$102(Lcom/htc/clock3dwidget/util/DigitControl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput p1, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mNextNumber:I

    return p1
.end method

.method static synthetic access$104(Lcom/htc/clock3dwidget/util/DigitControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mNextNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mNextNumber:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/clock3dwidget/util/DigitControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mMaxNumber:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/clock3dwidget/util/DigitControl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/clock3dwidget/util/DigitControl;->nextNumber(I)V

    return-void
.end method

.method private findFlipControls(Lcom/htc/fusion/fx/FxTimelineControl;I)V
    .locals 7
    .parameter "timeline"
    .parameter "index"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "timeline.first"

    aput-object v2, v0, v4

    const-string v2, "timeline.second"

    aput-object v2, v0, v5

    const-string v2, "timeline.center"

    aput-object v2, v0, v6

    .line 103
    .local v0, controls:[Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, [Lcom/htc/fusion/fx/FxObject;

    .line 104
    .local v1, objs:[Lcom/htc/fusion/fx/FxObject;
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mFlipControls:[[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v2, p2

    aget-object v2, v1, v4

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v2, v3, v4

    .line 105
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mFlipControls:[[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v2, p2

    aget-object v2, v1, v5

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v2, v3, v5

    .line 106
    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mFlipControls:[[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v2, p2

    aget-object v2, v1, v6

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v2, v3, v6

    .line 107
    return-void
.end method

.method private nextNumber(I)V
    .locals 11
    .parameter "number"

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 181
    iget v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mFlipCount:I

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 183
    :cond_0
    iget v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mFlipCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mFlipCount:I

    .line 185
    iget v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mCurrentNumber:I

    div-int/lit8 v7, v0, 0xa

    .line 186
    .local v7, digit1_old:I
    iget v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mCurrentNumber:I

    rem-int/lit8 v9, v0, 0xa

    .line 188
    .local v9, digit2_old:I
    invoke-direct {p0, v10, v7, v9}, Lcom/htc/clock3dwidget/util/DigitControl;->setDigit(III)V

    .line 189
    const/4 v0, 0x2

    invoke-direct {p0, v0, v7, v9}, Lcom/htc/clock3dwidget/util/DigitControl;->setDigit(III)V

    .line 190
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v4, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mPlaybackSpeed:F

    move v2, v1

    move v3, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    .line 192
    div-int/lit8 v6, p1, 0xa

    .line 193
    .local v6, digit1_new:I
    rem-int/lit8 v8, p1, 0xa

    .line 195
    .local v8, digit2_new:I
    invoke-direct {p0, v1, v6, v8}, Lcom/htc/clock3dwidget/util/DigitControl;->setDigit(III)V

    .line 196
    const/4 v0, 0x3

    invoke-direct {p0, v0, v6, v8}, Lcom/htc/clock3dwidget/util/DigitControl;->setDigit(III)V

    .line 198
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

    const/16 v2, 0xa

    iget v4, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mPlaybackSpeed:F

    move v3, v1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    .line 201
    iput p1, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mCurrentNumber:I

    goto :goto_0
.end method

.method private setChild(Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 3
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    .line 118
    sget-boolean v1, Lcom/htc/clock3dwidget/util/DigitControl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 119
    :cond_0
    invoke-virtual {p1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 121
    const-class v1, Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getChildByType(Ljava/lang/Class;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 122
    .local v0, tile:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 125
    :cond_1
    return-void
.end method

.method private setDigit(III)V
    .locals 8
    .parameter "index"
    .parameter "digit1"
    .parameter "digit2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 205
    iget-object v6, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mFlipControls:[[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v6, v6, p1

    aget-object v1, v6, v4

    .line 206
    .local v1, first:Lcom/htc/fusion/fx/FxTimelineControl;
    iget-object v6, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mFlipControls:[[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v6, v6, p1

    aget-object v2, v6, v5

    .line 207
    .local v2, second:Lcom/htc/fusion/fx/FxTimelineControl;
    iget-object v6, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mFlipControls:[[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v6, v6, p1

    const/4 v7, 0x2

    aget-object v0, v6, v7

    .line 209
    .local v0, center:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v0, :cond_1

    .line 210
    int-to-float v6, p3

    invoke-virtual {v0, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 211
    mul-int/lit8 v6, p2, 0xa

    add-int/2addr v6, p3

    const/16 v7, 0xa

    if-ge v6, v7, :cond_0

    iget v6, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mMaxNumber:I

    const/16 v7, 0x18

    if-eq v6, v7, :cond_2

    :cond_0
    move v3, v5

    .line 213
    .local v3, useDouble:Z
    :goto_0
    if-eqz v3, :cond_3

    .line 214
    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 223
    .end local v3           #useDouble:Z
    :cond_1
    :goto_1
    int-to-float v4, p2

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 224
    int-to-float v4, p3

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 225
    return-void

    :cond_2
    move v3, v4

    .line 211
    goto :goto_0

    .line 218
    .restart local v3       #useDouble:Z
    :cond_3
    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 220
    invoke-virtual {v0, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_1
.end method


# virtual methods
.method public bind()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mPlaybackListener:Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 95
    return-void
.end method

.method public doTiltChanged(F)V
    .locals 3
    .parameter "tilt"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mTilt:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mTilt:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v0

    .line 89
    .local v0, frame:F
    iget-object v1, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 90
    return-void
.end method

.method public setAmPm(I)V
    .locals 5
    .parameter "ampm"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 228
    packed-switch p1, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_0_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 231
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_1_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 232
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_2_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 233
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_3_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_0_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 237
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_1_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 238
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_2_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 239
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_3_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 240
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_0_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 241
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_1_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 242
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_2_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 243
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_3_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 246
    :pswitch_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_0_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 247
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_1_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 248
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_2_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 249
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_3_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 250
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_0_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 251
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_1_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 252
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_2_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 253
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mBottom_3_ampm:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCurrentNumber(I)V
    .locals 13
    .parameter "number"

    .prologue
    const/16 v6, 0xa

    const/high16 v4, 0x3f80

    const/4 v1, 0x0

    .line 135
    iget v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mMaxNumber:I

    rem-int v0, p1, v0

    iput v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mCurrentNumber:I

    iput v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mDestNumber:I

    .line 136
    iget v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mCurrentNumber:I

    div-int/lit8 v11, v0, 0xa

    .line 137
    .local v11, digit1:I
    iget v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mCurrentNumber:I

    rem-int/lit8 v12, v0, 0xa

    .line 138
    .local v12, digit2:I
    const/4 v0, 0x2

    invoke-direct {p0, v0, v11, v12}, Lcom/htc/clock3dwidget/util/DigitControl;->setDigit(III)V

    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, v0, v11, v12}, Lcom/htc/clock3dwidget/util/DigitControl;->setDigit(III)V

    .line 140
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

    move v2, v1

    move v3, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    .line 141
    const/4 v0, 0x3

    invoke-direct {p0, v0, v11, v12}, Lcom/htc/clock3dwidget/util/DigitControl;->setDigit(III)V

    .line 142
    invoke-direct {p0, v1, v11, v12}, Lcom/htc/clock3dwidget/util/DigitControl;->setDigit(III)V

    .line 143
    iget-object v5, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

    move v7, v6

    move v8, v1

    move v9, v4

    move v10, v1

    invoke-virtual/range {v5 .. v10}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    .line 144
    return-void
.end method

.method public setDestNumber(I)V
    .locals 1
    .parameter "number"

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/clock3dwidget/util/DigitControl;->setDestNumber(II)V

    .line 148
    return-void
.end method

.method public setDestNumber(II)V
    .locals 3
    .parameter "number"
    .parameter "flipCount"

    .prologue
    const/4 v2, 0x2

    .line 155
    iget v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mDestNumber:I

    if-ne v0, p1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 157
    :cond_0
    iput p1, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mDestNumber:I

    .line 159
    iput p2, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mFlipCount:I

    .line 161
    if-ne p2, v2, :cond_1

    .line 163
    iget v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mMaxNumber:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mMaxNumber:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mNextNumber:I

    .line 168
    :goto_1
    if-ne p2, v2, :cond_2

    .line 169
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mPlaybackSpeed:F

    .line 173
    :goto_2
    iget v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mNextNumber:I

    invoke-direct {p0, v0}, Lcom/htc/clock3dwidget/util/DigitControl;->nextNumber(I)V

    goto :goto_0

    .line 165
    :cond_1
    iput p1, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mNextNumber:I

    goto :goto_1

    .line 171
    :cond_2
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mPlaybackSpeed:F

    goto :goto_2
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/util/DigitControl;->mPlaybackListener:Lcom/htc/clock3dwidget/util/DigitControl$PlaybackCompleteListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 99
    return-void
.end method
