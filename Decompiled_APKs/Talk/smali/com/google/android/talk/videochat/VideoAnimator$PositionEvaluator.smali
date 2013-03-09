.class Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;
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
    name = "PositionEvaluator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoAnimator;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/videochat/VideoAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;->this$0:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/VideoAnimator;Lcom/google/android/talk/videochat/VideoAnimator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoAnimator$PositionEvaluator;-><init>(Lcom/google/android/talk/videochat/VideoAnimator;)V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 142
    instance-of v2, p2, Lcom/google/android/talk/videochat/VideoAnimator$Position;

    if-eqz v2, :cond_0

    instance-of v2, p3, Lcom/google/android/talk/videochat/VideoAnimator$Position;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 143
    check-cast v1, Lcom/google/android/talk/videochat/VideoAnimator$Position;

    .local v1, start:Lcom/google/android/talk/videochat/VideoAnimator$Position;
    move-object v0, p3

    .line 144
    check-cast v0, Lcom/google/android/talk/videochat/VideoAnimator$Position;

    .line 145
    .local v0, end:Lcom/google/android/talk/videochat/VideoAnimator$Position;
    new-instance v2, Lcom/google/android/talk/videochat/VideoAnimator$Position;

    iget v3, v1, Lcom/google/android/talk/videochat/VideoAnimator$Position;->x:I

    int-to-float v3, v3

    iget v4, v0, Lcom/google/android/talk/videochat/VideoAnimator$Position;->x:I

    iget v5, v1, Lcom/google/android/talk/videochat/VideoAnimator$Position;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v1, Lcom/google/android/talk/videochat/VideoAnimator$Position;->y:I

    int-to-float v4, v4

    iget v5, v0, Lcom/google/android/talk/videochat/VideoAnimator$Position;->y:I

    iget v6, v1, Lcom/google/android/talk/videochat/VideoAnimator$Position;->y:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/talk/videochat/VideoAnimator$Position;-><init>(II)V

    .line 150
    .end local v0           #end:Lcom/google/android/talk/videochat/VideoAnimator$Position;
    .end local v1           #start:Lcom/google/android/talk/videochat/VideoAnimator$Position;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
