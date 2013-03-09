.class Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;
.super Ljava/lang/Object;
.source "WordCandsList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/WordCandsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# static fields
.field private static final DURATION:I = 0x12c


# instance fields
.field private interpolator:Landroid/view/animation/Interpolator;

.field private mDistance:I

.field private mEndPoint:I

.field private mStartPoint:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/htc/android/htcime/ui/WordCandsList;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/ui/WordCandsList;)V
    .locals 0
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    return-void
.end method

.method private endScroll()V
    .locals 0

    .prologue
    .line 846
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/high16 v8, 0x4396

    .line 854
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->mStartTime:J

    sub-long v2, v4, v6

    .line 856
    .local v2, deltaT:J
    const-wide/16 v4, 0x12c

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 857
    iget-object v4, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->interpolator:Landroid/view/animation/Interpolator;

    long-to-float v5, v2

    div-float/2addr v5, v8

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float v0, v8, v4

    .line 858
    .local v0, IdeltaT:F
    iget v4, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->mStartPoint:I

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->mDistance:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 859
    .local v1, currX:I
    iget-object v4, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsList;

    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsList;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/WordCandsList;->getScrollY()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/htc/android/htcime/ui/WordCandsList;->scrollTo(II)V

    .line 860
    iget-object v4, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsList;

    invoke-virtual {v4, p0}, Lcom/htc/android/htcime/ui/WordCandsList;->post(Ljava/lang/Runnable;)Z

    .line 867
    .end local v0           #IdeltaT:F
    .end local v1           #currX:I
    :goto_0
    return-void

    .line 864
    :cond_0
    iget-object v4, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsList;

    iget v5, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->mEndPoint:I

    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsList;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsList;->getScrollY()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcime/ui/WordCandsList;->scrollTo(II)V

    .line 865
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->endScroll()V

    goto :goto_0
.end method

.method public start(I)V
    .locals 2
    .parameter "endPosition"

    .prologue
    .line 836
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->mStartTime:J

    .line 837
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsList;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandsList;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->mStartPoint:I

    .line 839
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->mEndPoint:I

    .line 840
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->mEndPoint:I

    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->mStartPoint:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->mDistance:I

    .line 841
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->interpolator:Landroid/view/animation/Interpolator;

    .line 842
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsList;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/WordCandsList;->post(Ljava/lang/Runnable;)Z

    .line 843
    return-void
.end method
