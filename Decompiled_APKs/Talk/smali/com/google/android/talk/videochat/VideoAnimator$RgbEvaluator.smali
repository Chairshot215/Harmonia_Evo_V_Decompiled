.class Lcom/google/android/talk/videochat/VideoAnimator$RgbEvaluator;
.super Ljava/lang/Object;
.source "VideoAnimator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RgbEvaluator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoAnimator;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/videochat/VideoAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoAnimator$RgbEvaluator;->this$0:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoAnimator$RgbEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;)V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    instance-of v4, p2, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    instance-of v4, p3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 173
    new-array v2, v5, [F

    .line 174
    .local v2, sRgb:[F
    new-array v0, v5, [F

    .line 176
    .local v0, eRgb:[F
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 177
    .local v3, start:I
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 179
    .local v1, end:I
    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    aput v4, v2, v6

    .line 180
    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    aput v4, v2, v7

    .line 181
    and-int/lit16 v4, v3, 0xff

    int-to-float v4, v4

    aput v4, v2, v8

    .line 183
    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    aput v4, v0, v6

    .line 184
    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    aput v4, v0, v7

    .line 185
    and-int/lit16 v4, v1, 0xff

    int-to-float v4, v4

    aput v4, v0, v8

    .line 187
    aget v4, v2, v6

    aget v5, v0, v6

    aget v6, v2, v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    aget v5, v2, v7

    aget v6, v0, v7

    aget v7, v2, v7

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget v5, v2, v8

    aget v6, v0, v8

    aget v7, v2, v8

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 191
    .end local v0           #eRgb:[F
    .end local v1           #end:I
    .end local v2           #sRgb:[F
    .end local v3           #start:I
    :goto_0
    return-object v4

    .restart local p2
    .restart local p3
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
