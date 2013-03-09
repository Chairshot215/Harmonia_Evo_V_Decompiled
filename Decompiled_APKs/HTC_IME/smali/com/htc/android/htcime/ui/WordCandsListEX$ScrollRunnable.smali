.class Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;
.super Ljava/util/Observable;
.source "WordCandsListEX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/WordCandsListEX;
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

.field final synthetic this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/ui/WordCandsListEX;)V
    .locals 0
    .parameter

    .prologue
    .line 975
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 977
    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->endScroll()V

    return-void
.end method

.method private endScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1000
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->setChanged()V

    .line 1001
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    #getter for: Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I
    invoke-static {v2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->access$400(Lcom/htc/android/htcime/ui/WordCandsListEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->notifyObservers(Ljava/lang/Object;)V

    .line 1010
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/high16 v9, 0x4396

    .line 1018
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->mStartTime:J

    sub-long v3, v5, v7

    .line 1020
    .local v3, deltaT:J
    const-wide/16 v5, 0x12c

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    .line 1021
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->interpolator:Landroid/view/animation/Interpolator;

    long-to-float v6, v3

    div-float/2addr v6, v9

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v0, v9, v5

    .line 1023
    .local v0, IdeltaT:F
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    #getter for: Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z
    invoke-static {v5}, Lcom/htc/android/htcime/ui/WordCandsListEX;->access$300(Lcom/htc/android/htcime/ui/WordCandsListEX;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1025
    iget v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->mStartPoint:I

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->mDistance:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 1027
    .local v2, currY:I
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getScrollX()I

    move-result v6

    invoke-virtual {v5, v6, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollTo(II)V

    .line 1035
    .end local v2           #currY:I
    :goto_0
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v5, p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->post(Ljava/lang/Runnable;)Z

    .line 1050
    .end local v0           #IdeltaT:F
    :goto_1
    return-void

    .line 1030
    .restart local v0       #IdeltaT:F
    :cond_0
    iget v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->mStartPoint:I

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->mDistance:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    float-to-int v1, v5

    .line 1032
    .local v1, currX:I
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getScrollY()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollTo(II)V

    goto :goto_0

    .line 1038
    .end local v0           #IdeltaT:F
    .end local v1           #currX:I
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    #getter for: Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z
    invoke-static {v5}, Lcom/htc/android/htcime/ui/WordCandsListEX;->access$300(Lcom/htc/android/htcime/ui/WordCandsListEX;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1041
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getScrollX()I

    move-result v6

    iget v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->mEndPoint:I

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollTo(II)V

    .line 1042
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->endScroll()V

    goto :goto_1

    .line 1046
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->mEndPoint:I

    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getScrollY()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollTo(II)V

    .line 1047
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->endScroll()V

    goto :goto_1
.end method

.method public start(I)V
    .locals 4
    .parameter "endPosition"

    .prologue
    const/4 v3, 0x1

    .line 981
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->mStartTime:J

    .line 982
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    #getter for: Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z
    invoke-static {v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->access$300(Lcom/htc/android/htcime/ui/WordCandsListEX;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->mStartPoint:I

    .line 990
    :goto_0
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->mEndPoint:I

    .line 991
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->mEndPoint:I

    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->mStartPoint:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->mDistance:I

    .line 992
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->interpolator:Landroid/view/animation/Interpolator;

    .line 993
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->post(Ljava/lang/Runnable;)Z

    .line 995
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->setChanged()V

    .line 996
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    #getter for: Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I
    invoke-static {v1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->access$400(Lcom/htc/android/htcime/ui/WordCandsListEX;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->notifyObservers(Ljava/lang/Object;)V

    .line 997
    return-void

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->mStartPoint:I

    goto :goto_0
.end method
