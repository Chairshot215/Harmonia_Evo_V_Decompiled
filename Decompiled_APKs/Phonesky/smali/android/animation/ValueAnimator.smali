.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$1;,
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;,
        Landroid/animation/ValueAnimator$AnimationHandler;
    }
.end annotation


# static fields
.field private static sAnimationHandler:Landroid/animation/ValueAnimator$AnimationHandler;

.field private static final sAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static final sDelayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sEndingAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static sFrameDelay:J

.field private static final sPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private static final sReadyAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mPlayingBackwards:Z

.field private mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mSeekTime:J

.field private mStartDelay:J

.field private mStartTime:J

.field private mStartedDelay:Z

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Landroid/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sAnimations:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sPendingAnimations:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Landroid/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sEndingAnims:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDelayedAnims:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sReadyAnims:Ljava/util/ArrayList;

    .line 144
    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/animation/ValueAnimator;->sFrameDelay:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    .line 90
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 96
    iput v2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 101
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 117
    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 131
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 138
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 148
    iput v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 162
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 206
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/animation/ValueAnimator;->sAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/animation/ValueAnimator;->sDelayedAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/animation/ValueAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method static synthetic access$1100()J
    .locals 2

    .prologue
    .line 26
    sget-wide v0, Landroid/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/animation/ValueAnimator;->sPendingAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/animation/ValueAnimator;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 26
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/animation/ValueAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    return v0
.end method

.method static synthetic access$500(Landroid/animation/ValueAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    return-void
.end method

.method static synthetic access$600(Landroid/animation/ValueAnimator;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/animation/ValueAnimator;->sReadyAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Landroid/animation/ValueAnimator;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/animation/ValueAnimator;->animationFrame(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/animation/ValueAnimator;->sEndingAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method private animationFrame(J)Z
    .locals 11
    .parameter "currentTime"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v10, 0x3f80

    .line 1076
    const/4 v0, 0x0

    .line 1078
    .local v0, done:Z
    iget v6, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v6, :cond_0

    .line 1079
    iput v5, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1080
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 1081
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1088
    :cond_0
    :goto_0
    iget v6, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    packed-switch v6, :pswitch_data_0

    .line 1133
    :goto_1
    return v0

    .line 1083
    :cond_1
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    sub-long v6, p1, v6

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1085
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    goto :goto_0

    .line 1091
    :pswitch_0
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v6, p1, v6

    long-to-float v6, v6

    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v7, v7

    div-float v1, v6, v7

    .line 1092
    .local v1, fraction:F
    cmpl-float v6, v1, v10

    if-ltz v6, :cond_5

    .line 1093
    iget v6, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lt v6, v7, :cond_2

    iget v6, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    .line 1095
    :cond_2
    iget-object v6, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 1096
    iget-object v6, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 1097
    .local v3, listener:Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    goto :goto_2

    .line 1100
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Landroid/animation/Animator$AnimatorListener;
    :cond_3
    iget v6, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1101
    iget v6, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 1102
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v6, :cond_7

    :goto_3
    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1105
    :cond_4
    sub-float/2addr v1, v10

    .line 1106
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mDuration:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1112
    :cond_5
    :goto_4
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_6

    .line 1113
    sub-float v1, v10, v1

    .line 1115
    :cond_6
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1

    :cond_7
    move v4, v5

    .line 1102
    goto :goto_3

    .line 1108
    :cond_8
    const/4 v0, 0x1

    .line 1109
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_4

    .line 1120
    .end local v1           #fraction:F
    :pswitch_1
    iget v6, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lez v6, :cond_9

    iget v6, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v5, :cond_9

    .line 1121
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1128
    :goto_5
    :pswitch_2
    const/4 v0, 0x1

    .line 1129
    iput v4, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    goto :goto_1

    .line 1123
    :cond_9
    invoke-virtual {p0, v10}, Landroid/animation/ValueAnimator;->animateValue(F)V

    goto :goto_5

    .line 1088
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private delayedAnimationFrame(J)Z
    .locals 5
    .parameter "currentTime"

    .prologue
    const/4 v2, 0x1

    .line 1043
    iget v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return v2

    .line 1047
    :cond_1
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    if-nez v3, :cond_3

    .line 1048
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1049
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    .line 1060
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1051
    :cond_3
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v0, p1, v3

    .line 1052
    .local v0, deltaTime:J
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 1055
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    sub-long v3, v0, v3

    sub-long v3, p1, v3

    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1056
    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    goto :goto_0
.end method

.method private endAnimation()V
    .locals 4

    .prologue
    .line 1001
    sget-object v3, Landroid/animation/ValueAnimator;->sAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1002
    const/4 v3, 0x0

    iput v3, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1003
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1005
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1007
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 1008
    .local v1, listener:Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 1011
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/animation/Animator$AnimatorListener;
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    return-void
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 709
    sget-wide v0, Landroid/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "values"

    .prologue
    .line 237
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 238
    .local v0, anim:Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 239
    return-object v0
.end method

.method private start(Z)V
    .locals 10
    .parameter "playBackwards"

    .prologue
    const/4 v5, 0x0

    .line 902
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 903
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 905
    .local v3, looper:Landroid/os/Looper;
    if-eqz v3, :cond_1

    .line 906
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    if-ne v6, v7, :cond_0

    const/4 v1, 0x1

    .line 911
    .local v1, isUiThread:Z
    :goto_0
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    if-eqz v1, :cond_3

    .line 912
    iget-object v6, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 914
    iget-object v6, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 916
    .local v4, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 917
    .local v2, listener:Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #isUiThread:Z
    .end local v2           #listener:Landroid/animation/Animator$AnimatorListener;
    .end local v4           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    move v1, v5

    .line 906
    goto :goto_0

    .line 909
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #isUiThread:Z
    goto :goto_0

    .line 921
    :cond_2
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 923
    :cond_3
    iput v5, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 924
    iput v5, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 925
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 926
    sget-object v6, Landroid/animation/ValueAnimator;->sPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    sget-object v6, Landroid/animation/ValueAnimator;->sAnimationHandler:Landroid/animation/ValueAnimator$AnimationHandler;

    if-nez v6, :cond_4

    .line 928
    new-instance v6, Landroid/animation/ValueAnimator$AnimationHandler;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>(Landroid/animation/ValueAnimator$1;)V

    sput-object v6, Landroid/animation/ValueAnimator;->sAnimationHandler:Landroid/animation/ValueAnimator$AnimationHandler;

    .line 932
    :cond_4
    sget-object v6, Landroid/animation/ValueAnimator;->sAnimationHandler:Landroid/animation/ValueAnimator$AnimationHandler;

    invoke-virtual {v6, v5}, Landroid/animation/ValueAnimator$AnimationHandler;->sendEmptyMessage(I)Z

    .line 933
    return-void
.end method

.method private startAnimation()V
    .locals 7

    .prologue
    .line 1018
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1019
    sget-object v3, Landroid/animation/ValueAnimator;->sAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1024
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1026
    .local v2, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 1027
    .local v1, listener:Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    .line 1030
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Landroid/animation/Animator$AnimatorListener;
    .end local v2           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 814
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 817
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    return-void
.end method

.method animateValue(F)V
    .locals 4
    .parameter "fraction"

    .prologue
    .line 1152
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v3

    .line 1153
    .local v2, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1154
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)Ljava/lang/Object;

    .line 1153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1156
    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1157
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1158
    .local v1, numListeners:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1159
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 1158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1162
    .end local v1           #numListeners:I
    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1166
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1167
    .local v0, anim:Landroid/animation/ValueAnimator;
    iget-object v7, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 1168
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1169
    .local v4, oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator$AnimatorUpdateListener;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1170
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1171
    .local v2, numListeners:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1172
    iget-object v7, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1175
    .end local v1           #i:I
    .end local v2           #numListeners:I
    .end local v4           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator$AnimatorUpdateListener;>;"
    :cond_0
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Landroid/animation/ValueAnimator;->mSeekTime:J

    .line 1176
    iput-boolean v9, v0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 1177
    iput v9, v0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 1178
    iput-boolean v9, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 1179
    iput v9, v0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 1180
    iput-boolean v9, v0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 1181
    iget-object v5, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1182
    .local v5, oldValues:[Landroid/animation/PropertyValuesHolder;
    if-eqz v5, :cond_2

    .line 1183
    array-length v3, v5

    .line 1184
    .local v3, numValues:I
    new-array v7, v3, [Landroid/animation/PropertyValuesHolder;

    iput-object v7, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1185
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 1186
    iget-object v7, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v8, v5, v1

    invoke-virtual {v8}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v7, v1

    .line 1185
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1188
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1189
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_2

    .line 1190
    iget-object v7, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v6, v7, v1

    .line 1191
    .local v6, valuesHolder:Landroid/animation/PropertyValuesHolder;
    iget-object v7, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1194
    .end local v1           #i:I
    .end local v3           #numValues:I
    .end local v6           #valuesHolder:Landroid/animation/PropertyValuesHolder;
    :cond_2
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 739
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 742
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .prologue
    .line 565
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_1

    .line 566
    :cond_0
    const-wide/16 v0, 0x0

    .line 568
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method initAnimation()V
    .locals 3

    .prologue
    .line 502
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    .line 503
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 504
    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 505
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 509
    .end local v0           #i:I
    .end local v1           #numValues:I
    :cond_1
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 4
    .parameter "playTime"

    .prologue
    .line 547
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 548
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 549
    .local v0, currentTime:J
    iget v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 550
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    .line 551
    const/4 v2, 0x4

    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 553
    :cond_0
    sub-long v2, v0, p1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 554
    invoke-direct {p0, v0, v1}, Landroid/animation/ValueAnimator;->animationFrame(J)Z

    .line 555
    return-void
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 0
    .parameter "duration"

    .prologue
    .line 522
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 523
    return-object p0
.end method

.method public varargs setFloatValues([F)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 357
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 361
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 367
    :goto_1
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    goto :goto_0

    .line 363
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 364
    .local v0, valuesHolder:Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 858
    if-eqz p1, :cond_0

    .line 859
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 861
    :cond_0
    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 5
    .parameter "values"

    .prologue
    .line 468
    array-length v1, p1

    .line 469
    .local v1, numValues:I
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 470
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 471
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 472
    aget-object v2, p1, v0

    .line 473
    .local v2, valuesHolder:Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    .end local v2           #valuesHolder:Landroid/animation/PropertyValuesHolder;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 477
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 937
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 938
    return-void
.end method
