.class Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;
.super Ljava/lang/Object;
.source "DraggableHorizontalStrip.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->createScrollAnimation(FJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/DraggableHorizontalStrip;

.field final synthetic val$velocity:F


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/DraggableHorizontalStrip;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;->this$0:Lcom/google/android/finsky/layout/DraggableHorizontalStrip;

    iput p2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;->val$velocity:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x447a

    div-float v0, v2, v3

    .line 94
    .local v0, timePassed:F
    iget v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;->val$velocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;->this$0:Lcom/google/android/finsky/layout/DraggableHorizontalStrip;

    iget v3, v3, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 96
    .local v1, travelled:F
    iget v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;->val$velocity:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 97
    neg-float v1, v1

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;->this$0:Lcom/google/android/finsky/layout/DraggableHorizontalStrip;

    iget-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;->this$0:Lcom/google/android/finsky/layout/DraggableHorizontalStrip;

    iget v3, v3, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    #calls: Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->updateScrollPosition(F)V
    invoke-static {v2, v3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->access$000(Lcom/google/android/finsky/layout/DraggableHorizontalStrip;F)V

    .line 100
    return-void
.end method
