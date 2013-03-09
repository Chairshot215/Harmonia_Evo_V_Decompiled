.class public Lcom/htc/gl/anim/AnimationObj;
.super Ljava/lang/Object;
.source "AnimationObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/gl/anim/AnimationObj$AnimationCount;
    }
.end annotation


# static fields
.field public static final ANIMATION_ALPHA:I = 0x7

.field public static final ANIMATION_ANGLE:I = 0x10002

.field public static final ANIMATION_ANGLE_XAXIS:I = 0x4

.field public static final ANIMATION_ANGLE_YAXIS:I = 0x5

.field public static final ANIMATION_ANGLE_ZAXIS:I = 0x6

.field public static final ANIMATION_COLOR:I = 0x10003

.field public static final ANIMATION_NONE:I = 0x0

.field public static final ANIMATION_POSITION:I = 0x10000

.field public static final ANIMATION_SCALE:I = 0x10001

.field public static final ANIMATION_SCALE_X:I = 0x8

.field public static final ANIMATION_SCALE_Y:I = 0x9

.field public static final ANIMATION_TRANS_XAXIS:I = 0x1

.field public static final ANIMATION_TRANS_YAXIS:I = 0x2

.field public static final ANIMATION_TRANS_ZAXIS:I = 0x3


# instance fields
.field endFrame:I

.field endValue:[F

.field private mAnimationCount:Lcom/htc/gl/anim/AnimationObj$AnimationCount;

.field private mAnimationKind:I

.field private mDirection:F

.field private mEndTime:I

.field private mEndValue:F

.field private final mKeyFrame:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/gl/anim/AnimationKey;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mOutputValue:F

.field private mStartTime:I

.field private mStartValue:F

.field startFrame:I

.field startValue:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/htc/gl/anim/AnimationObj;->mAnimationKind:I

    .line 32
    iput v0, p0, Lcom/htc/gl/anim/AnimationObj;->mDirection:F

    .line 33
    iput v1, p0, Lcom/htc/gl/anim/AnimationObj;->mStartTime:I

    .line 34
    iput v1, p0, Lcom/htc/gl/anim/AnimationObj;->mEndTime:I

    .line 35
    iput v0, p0, Lcom/htc/gl/anim/AnimationObj;->mStartValue:F

    .line 36
    iput v0, p0, Lcom/htc/gl/anim/AnimationObj;->mEndValue:F

    .line 38
    iput v0, p0, Lcom/htc/gl/anim/AnimationObj;->mOutputValue:F

    .line 40
    iput-object v2, p0, Lcom/htc/gl/anim/AnimationObj;->mAnimationCount:Lcom/htc/gl/anim/AnimationObj$AnimationCount;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/gl/anim/AnimationObj;->startFrame:I

    const v0, 0x186a0

    iput v0, p0, Lcom/htc/gl/anim/AnimationObj;->endFrame:I

    .line 47
    iput-object v2, p0, Lcom/htc/gl/anim/AnimationObj;->startValue:[F

    iput-object v2, p0, Lcom/htc/gl/anim/AnimationObj;->endValue:[F

    .line 50
    iput-object p1, p0, Lcom/htc/gl/anim/AnimationObj;->mName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "name"
    .parameter "kind"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/htc/gl/anim/AnimationObj;->mAnimationKind:I

    .line 32
    iput v0, p0, Lcom/htc/gl/anim/AnimationObj;->mDirection:F

    .line 33
    iput v1, p0, Lcom/htc/gl/anim/AnimationObj;->mStartTime:I

    .line 34
    iput v1, p0, Lcom/htc/gl/anim/AnimationObj;->mEndTime:I

    .line 35
    iput v0, p0, Lcom/htc/gl/anim/AnimationObj;->mStartValue:F

    .line 36
    iput v0, p0, Lcom/htc/gl/anim/AnimationObj;->mEndValue:F

    .line 38
    iput v0, p0, Lcom/htc/gl/anim/AnimationObj;->mOutputValue:F

    .line 40
    iput-object v2, p0, Lcom/htc/gl/anim/AnimationObj;->mAnimationCount:Lcom/htc/gl/anim/AnimationObj$AnimationCount;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/gl/anim/AnimationObj;->startFrame:I

    const v0, 0x186a0

    iput v0, p0, Lcom/htc/gl/anim/AnimationObj;->endFrame:I

    .line 47
    iput-object v2, p0, Lcom/htc/gl/anim/AnimationObj;->startValue:[F

    iput-object v2, p0, Lcom/htc/gl/anim/AnimationObj;->endValue:[F

    .line 55
    iput-object p1, p0, Lcom/htc/gl/anim/AnimationObj;->mName:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/htc/gl/anim/AnimationObj;->mAnimationKind:I

    .line 57
    return-void
.end method

.method private onCount(FFFF)F
    .locals 2
    .parameter "difftime"
    .parameter "direction"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/htc/gl/anim/AnimationObj;->mAnimationCount:Lcom/htc/gl/anim/AnimationObj$AnimationCount;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/htc/gl/anim/AnimationObj;->mAnimationCount:Lcom/htc/gl/anim/AnimationObj$AnimationCount;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/gl/anim/AnimationObj$AnimationCount;->onCount(FFFF)F

    move-result v0

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    move v0, p4

    .line 109
    .local v0, outputValue:F
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    .line 110
    sub-float v1, p4, p3

    mul-float/2addr v1, p1

    div-float/2addr v1, p2

    add-float v0, p3, v1

    goto :goto_0
.end method


# virtual methods
.method public addKeyFrame(Lcom/htc/gl/anim/AnimationKey;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public clearKeyFrame()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 138
    return-void
.end method

.method public getAnimationKind()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/gl/anim/AnimationObj;->mAnimationKind:I

    return v0
.end method

.method public getCountValue()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/htc/gl/anim/AnimationObj;->mOutputValue:F

    return v0
.end method

.method public getObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/gl/anim/AnimationObj;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gl/anim/AnimationObj;->mAnimationCount:Lcom/htc/gl/anim/AnimationObj$AnimationCount;

    .line 235
    return-void
.end method

.method public setAnimation(IIIFF)V
    .locals 1
    .parameter "kind"
    .parameter "startTime"
    .parameter "distance"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 72
    iput p1, p0, Lcom/htc/gl/anim/AnimationObj;->mAnimationKind:I

    .line 74
    int-to-float v0, p3

    iput v0, p0, Lcom/htc/gl/anim/AnimationObj;->mDirection:F

    .line 75
    iput p2, p0, Lcom/htc/gl/anim/AnimationObj;->mStartTime:I

    .line 76
    add-int v0, p2, p3

    iput v0, p0, Lcom/htc/gl/anim/AnimationObj;->mEndTime:I

    .line 77
    iput p4, p0, Lcom/htc/gl/anim/AnimationObj;->mStartValue:F

    iput p4, p0, Lcom/htc/gl/anim/AnimationObj;->mOutputValue:F

    .line 78
    iput p5, p0, Lcom/htc/gl/anim/AnimationObj;->mEndValue:F

    .line 79
    return-void
.end method

.method public setAnimationCount(Lcom/htc/gl/anim/AnimationObj$AnimationCount;)V
    .locals 0
    .parameter "count"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/gl/anim/AnimationObj;->mAnimationCount:Lcom/htc/gl/anim/AnimationObj$AnimationCount;

    .line 128
    return-void
.end method

.method public update(I)F
    .locals 4
    .parameter "time"

    .prologue
    .line 83
    iget v1, p0, Lcom/htc/gl/anim/AnimationObj;->mStartTime:I

    if-ge p1, v1, :cond_1

    .line 85
    iget v1, p0, Lcom/htc/gl/anim/AnimationObj;->mOutputValue:F

    iget v2, p0, Lcom/htc/gl/anim/AnimationObj;->mStartValue:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 86
    iget v1, p0, Lcom/htc/gl/anim/AnimationObj;->mStartValue:F

    iput v1, p0, Lcom/htc/gl/anim/AnimationObj;->mOutputValue:F

    .line 98
    :cond_0
    :goto_0
    iget v1, p0, Lcom/htc/gl/anim/AnimationObj;->mOutputValue:F

    return v1

    .line 88
    :cond_1
    iget v1, p0, Lcom/htc/gl/anim/AnimationObj;->mEndTime:I

    if-le p1, v1, :cond_2

    .line 90
    iget v1, p0, Lcom/htc/gl/anim/AnimationObj;->mOutputValue:F

    iget v2, p0, Lcom/htc/gl/anim/AnimationObj;->mEndValue:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 91
    iget v1, p0, Lcom/htc/gl/anim/AnimationObj;->mEndValue:F

    iput v1, p0, Lcom/htc/gl/anim/AnimationObj;->mOutputValue:F

    goto :goto_0

    .line 95
    :cond_2
    iget v1, p0, Lcom/htc/gl/anim/AnimationObj;->mStartTime:I

    sub-int v1, p1, v1

    int-to-float v0, v1

    .line 96
    .local v0, diffTime:F
    iget v1, p0, Lcom/htc/gl/anim/AnimationObj;->mDirection:F

    iget v2, p0, Lcom/htc/gl/anim/AnimationObj;->mStartValue:F

    iget v3, p0, Lcom/htc/gl/anim/AnimationObj;->mEndValue:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/gl/anim/AnimationObj;->onCount(FFFF)F

    move-result v1

    iput v1, p0, Lcom/htc/gl/anim/AnimationObj;->mOutputValue:F

    goto :goto_0
.end method

.method public updateByKeyFrame(F[F)Z
    .locals 8
    .parameter "frame"
    .parameter "outValue"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 188
    iget-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 190
    .local v2, size:I
    if-nez v2, :cond_0

    move v4, v5

    .line 228
    :goto_0
    return v4

    .line 195
    :cond_0
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/gl/anim/AnimationObj;->startFrame:I

    .line 196
    const v4, 0x186a0

    iput v4, p0, Lcom/htc/gl/anim/AnimationObj;->endFrame:I

    .line 197
    iput-object v6, p0, Lcom/htc/gl/anim/AnimationObj;->startValue:[F

    .line 198
    iput-object v6, p0, Lcom/htc/gl/anim/AnimationObj;->endValue:[F

    .line 200
    iget-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/gl/anim/AnimationKey;

    invoke-virtual {v4}, Lcom/htc/gl/anim/AnimationKey;->getFreame()I

    move-result v4

    iput v4, p0, Lcom/htc/gl/anim/AnimationObj;->startFrame:I

    .line 201
    iget-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/gl/anim/AnimationKey;

    invoke-virtual {v4}, Lcom/htc/gl/anim/AnimationKey;->getFreame()I

    move-result v4

    iput v4, p0, Lcom/htc/gl/anim/AnimationObj;->endFrame:I

    .line 202
    iget-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/gl/anim/AnimationKey;

    invoke-virtual {v4}, Lcom/htc/gl/anim/AnimationKey;->getValue()[F

    move-result-object v4

    iput-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->startValue:[F

    .line 203
    iget-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/gl/anim/AnimationKey;

    invoke-virtual {v4}, Lcom/htc/gl/anim/AnimationKey;->getValue()[F

    move-result-object v4

    iput-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->endValue:[F

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 206
    iget-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/gl/anim/AnimationKey;

    invoke-virtual {v4}, Lcom/htc/gl/anim/AnimationKey;->getFreame()I

    move-result v1

    .line 207
    .local v1, keyFrame:I
    int-to-float v4, v1

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_2

    iget v4, p0, Lcom/htc/gl/anim/AnimationObj;->startFrame:I

    if-gt v4, v1, :cond_2

    .line 209
    iput v1, p0, Lcom/htc/gl/anim/AnimationObj;->startFrame:I

    .line 210
    iget-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/gl/anim/AnimationKey;

    invoke-virtual {v4}, Lcom/htc/gl/anim/AnimationKey;->getValue()[F

    move-result-object v4

    iput-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->startValue:[F

    .line 204
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    :cond_2
    int-to-float v4, v1

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/htc/gl/anim/AnimationObj;->endFrame:I

    if-lt v4, v1, :cond_1

    .line 213
    iput v1, p0, Lcom/htc/gl/anim/AnimationObj;->endFrame:I

    .line 214
    iget-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/gl/anim/AnimationKey;

    invoke-virtual {v4}, Lcom/htc/gl/anim/AnimationKey;->getValue()[F

    move-result-object v4

    iput-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->endValue:[F

    goto :goto_2

    .line 218
    .end local v1           #keyFrame:I
    :cond_3
    iget-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->startValue:[F

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->endValue:[F

    if-eqz v4, :cond_5

    .line 220
    iget-object v4, p0, Lcom/htc/gl/anim/AnimationObj;->startValue:[F

    array-length v4, v4

    iget-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->endValue:[F

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 221
    .local v3, valueSize:I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_4

    .line 223
    iget v4, p0, Lcom/htc/gl/anim/AnimationObj;->startFrame:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    iget v5, p0, Lcom/htc/gl/anim/AnimationObj;->endFrame:I

    iget v6, p0, Lcom/htc/gl/anim/AnimationObj;->startFrame:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/gl/anim/AnimationObj;->startValue:[F

    aget v6, v6, v0

    iget-object v7, p0, Lcom/htc/gl/anim/AnimationObj;->endValue:[F

    aget v7, v7, v0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/htc/gl/anim/AnimationObj;->onCount(FFFF)F

    move-result v4

    aput v4, p2, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 226
    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v3           #valueSize:I
    :cond_5
    move v4, v5

    .line 228
    goto/16 :goto_0
.end method

.method public updateByKeyFrame(F)[F
    .locals 9
    .parameter "frame"

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 142
    iget-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 144
    .local v3, size:I
    if-nez v3, :cond_1

    .line 183
    :cond_0
    return-object v0

    .line 149
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/gl/anim/AnimationObj;->startFrame:I

    .line 150
    const v5, 0x186a0

    iput v5, p0, Lcom/htc/gl/anim/AnimationObj;->endFrame:I

    .line 151
    iput-object v0, p0, Lcom/htc/gl/anim/AnimationObj;->startValue:[F

    .line 152
    iput-object v0, p0, Lcom/htc/gl/anim/AnimationObj;->endValue:[F

    .line 154
    iget-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/gl/anim/AnimationKey;

    invoke-virtual {v5}, Lcom/htc/gl/anim/AnimationKey;->getFreame()I

    move-result v5

    iput v5, p0, Lcom/htc/gl/anim/AnimationObj;->startFrame:I

    .line 155
    iget-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/gl/anim/AnimationKey;

    invoke-virtual {v5}, Lcom/htc/gl/anim/AnimationKey;->getFreame()I

    move-result v5

    iput v5, p0, Lcom/htc/gl/anim/AnimationObj;->endFrame:I

    .line 156
    iget-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/gl/anim/AnimationKey;

    invoke-virtual {v5}, Lcom/htc/gl/anim/AnimationKey;->getValue()[F

    move-result-object v5

    iput-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->startValue:[F

    .line 157
    iget-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/gl/anim/AnimationKey;

    invoke-virtual {v5}, Lcom/htc/gl/anim/AnimationKey;->getValue()[F

    move-result-object v5

    iput-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->endValue:[F

    .line 158
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 160
    iget-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/gl/anim/AnimationKey;

    invoke-virtual {v5}, Lcom/htc/gl/anim/AnimationKey;->getFreame()I

    move-result v2

    .line 161
    .local v2, keyFrame:I
    int-to-float v5, v2

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_3

    iget v5, p0, Lcom/htc/gl/anim/AnimationObj;->startFrame:I

    if-gt v5, v2, :cond_3

    .line 163
    iput v2, p0, Lcom/htc/gl/anim/AnimationObj;->startFrame:I

    .line 164
    iget-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/gl/anim/AnimationKey;

    invoke-virtual {v5}, Lcom/htc/gl/anim/AnimationKey;->getValue()[F

    move-result-object v5

    iput-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->startValue:[F

    .line 158
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_3
    int-to-float v5, v2

    cmpl-float v5, v5, p1

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/htc/gl/anim/AnimationObj;->endFrame:I

    if-lt v5, v2, :cond_2

    .line 167
    iput v2, p0, Lcom/htc/gl/anim/AnimationObj;->endFrame:I

    .line 168
    iget-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->mKeyFrame:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/gl/anim/AnimationKey;

    invoke-virtual {v5}, Lcom/htc/gl/anim/AnimationKey;->getValue()[F

    move-result-object v5

    iput-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->endValue:[F

    goto :goto_1

    .line 172
    .end local v2           #keyFrame:I
    :cond_4
    iget-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->startValue:[F

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->endValue:[F

    if-eqz v5, :cond_0

    .line 174
    iget-object v5, p0, Lcom/htc/gl/anim/AnimationObj;->startValue:[F

    array-length v5, v5

    iget-object v6, p0, Lcom/htc/gl/anim/AnimationObj;->endValue:[F

    array-length v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 175
    .local v4, valueSize:I
    new-array v0, v4, [F

    .line 176
    .local v0, OutputValue:[F
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_0

    .line 178
    iget v5, p0, Lcom/htc/gl/anim/AnimationObj;->startFrame:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    iget v6, p0, Lcom/htc/gl/anim/AnimationObj;->endFrame:I

    iget v7, p0, Lcom/htc/gl/anim/AnimationObj;->startFrame:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/htc/gl/anim/AnimationObj;->startValue:[F

    aget v7, v7, v1

    iget-object v8, p0, Lcom/htc/gl/anim/AnimationObj;->endValue:[F

    aget v8, v8, v1

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/htc/gl/anim/AnimationObj;->onCount(FFFF)F

    move-result v5

    aput v5, v0, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
