.class Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;
.super Ljava/util/Observable;
.source "WordCandsListEX2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/WordCandsListEX2;
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

.field final synthetic this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/ui/WordCandsListEX2;)V
    .locals 0
    .parameter

    .prologue
    .line 943
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 945
    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->endScroll()V

    return-void
.end method

.method private endScroll()V
    .locals 0

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->setChanged()V

    .line 966
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->notifyObservers()V

    .line 975
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/high16 v9, 0x4396

    .line 983
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->mStartTime:J

    sub-long v3, v5, v7

    .line 985
    .local v3, deltaT:J
    const-wide/16 v5, 0x12c

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    .line 986
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->interpolator:Landroid/view/animation/Interpolator;

    long-to-float v6, v3

    div-float/2addr v6, v9

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v0, v9, v5

    .line 988
    .local v0, IdeltaT:F
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    #getter for: Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z
    invoke-static {v5}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->access$300(Lcom/htc/android/htcime/ui/WordCandsListEX2;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 990
    iget v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->mStartPoint:I

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->mDistance:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 992
    .local v2, currY:I
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getScrollX()I

    move-result v6

    invoke-virtual {v5, v6, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollTo(II)V

    .line 1000
    .end local v2           #currY:I
    :goto_0
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v5, p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->post(Ljava/lang/Runnable;)Z

    .line 1015
    .end local v0           #IdeltaT:F
    :goto_1
    return-void

    .line 995
    .restart local v0       #IdeltaT:F
    :cond_0
    iget v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->mStartPoint:I

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->mDistance:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    float-to-int v1, v5

    .line 997
    .local v1, currX:I
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getScrollY()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollTo(II)V

    goto :goto_0

    .line 1003
    .end local v0           #IdeltaT:F
    .end local v1           #currX:I
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    #getter for: Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z
    invoke-static {v5}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->access$300(Lcom/htc/android/htcime/ui/WordCandsListEX2;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1006
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getScrollX()I

    move-result v6

    iget v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->mEndPoint:I

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollTo(II)V

    .line 1007
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->endScroll()V

    goto :goto_1

    .line 1011
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->mEndPoint:I

    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getScrollY()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollTo(II)V

    .line 1012
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->endScroll()V

    goto :goto_1
.end method

.method public start(I)V
    .locals 2
    .parameter "endPosition"

    .prologue
    .line 949
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->mStartTime:J

    .line 950
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    #getter for: Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z
    invoke-static {v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->access$300(Lcom/htc/android/htcime/ui/WordCandsListEX2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->mStartPoint:I

    .line 958
    :goto_0
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->mEndPoint:I

    .line 959
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->mEndPoint:I

    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->mStartPoint:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->mDistance:I

    .line 960
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->interpolator:Landroid/view/animation/Interpolator;

    .line 961
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->post(Ljava/lang/Runnable;)Z

    .line 962
    return-void

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->this$0:Lcom/htc/android/htcime/ui/WordCandsListEX2;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->mStartPoint:I

    goto :goto_0
.end method
