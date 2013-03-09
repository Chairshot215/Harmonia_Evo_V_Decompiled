.class Lcom/htc/widget/AbsSpinner$WaveRunnable;
.super Ljava/lang/Object;
.source "AbsSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/AbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaveRunnable"
.end annotation


# static fields
.field private static final DURATION:I = 0xc8

.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mDistance:I

.field private mMode:I

.field private mMovedDistance:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/htc/widget/AbsSpinner;


# direct methods
.method private constructor <init>(Lcom/htc/widget/AbsSpinner;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 834
    iput-object p1, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMode:I

    .line 840
    iput v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mDistance:I

    .line 841
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lcom/htc/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/widget/AbsSpinner;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/widget/AbsSpinner$WaveRunnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->end()V

    return-void
.end method

.method private changeWidth(I)V
    .locals 1
    .parameter "step"

    .prologue
    .line 910
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-static {v0, p1}, Lcom/htc/widget/AbsSpinner;->access$812(Lcom/htc/widget/AbsSpinner;I)I

    .line 911
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-static {v0, p1}, Lcom/htc/widget/AbsSpinner;->access$720(Lcom/htc/widget/AbsSpinner;I)I

    .line 912
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    .line 913
    return-void
.end method

.method private end()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 916
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 917
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I
    invoke-static {v0, v1}, Lcom/htc/widget/AbsSpinner;->access$802(Lcom/htc/widget/AbsSpinner;I)I

    .line 918
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v1

    #setter for: Lcom/htc/widget/AbsSpinner;->mReducedWidth:I
    invoke-static {v0, v1}, Lcom/htc/widget/AbsSpinner;->access$702(Lcom/htc/widget/AbsSpinner;I)I

    .line 919
    iput v2, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMode:I

    .line 920
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #setter for: Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z
    invoke-static {v0, v2}, Lcom/htc/widget/AbsSpinner;->access$902(Lcom/htc/widget/AbsSpinner;Z)Z

    .line 921
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #getter for: Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z
    invoke-static {v0}, Lcom/htc/widget/AbsSpinner;->access$1000(Lcom/htc/widget/AbsSpinner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #setter for: Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z
    invoke-static {v0, v2}, Lcom/htc/widget/AbsSpinner;->access$1002(Lcom/htc/widget/AbsSpinner;Z)Z

    .line 923
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->setShrinkedPosition(I)V

    .line 924
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #calls: Lcom/htc/widget/AbsSpinner;->onAnimationEnd()V
    invoke-static {v0}, Lcom/htc/widget/AbsSpinner;->access$1100(Lcom/htc/widget/AbsSpinner;)V

    .line 928
    :goto_0
    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    goto :goto_0
.end method

.method private getTargetDistance()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xc8

    .line 898
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 899
    .local v0, now:J
    const/4 v2, 0x0

    .line 901
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mStartTime:J

    sub-long v3, v0, v3

    cmp-long v3, v3, v7

    if-ltz v3, :cond_0

    .line 902
    iget v2, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mDistance:I

    .line 906
    :goto_0
    return v2

    .line 904
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mStartTime:J

    sub-long v3, v0, v3

    iget v5, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mDistance:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    div-long/2addr v3, v7

    long-to-int v2, v3

    goto :goto_0
.end method

.method private startCommon()V
    .locals 2

    .prologue
    .line 872
    iget v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 873
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->end()V

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 875
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 879
    iget v2, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 880
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->end()V

    .line 895
    :goto_0
    return-void

    .line 884
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->getTargetDistance()I

    move-result v1

    .line 885
    .local v1, targetDistance:I
    iget v2, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mDistance:I

    if-ne v1, v2, :cond_1

    .line 886
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->end()V

    goto :goto_0

    .line 890
    :cond_1
    iget v2, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMovedDistance:I

    sub-int v0, v1, v2

    .line 891
    .local v0, step:I
    invoke-direct {p0, v0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->changeWidth(I)V

    .line 892
    iput v1, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMovedDistance:I

    .line 893
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v2, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 845
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    const/4 v5, -0x1

    iput v5, v4, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    .line 846
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v5

    #setter for: Lcom/htc/widget/AbsSpinner;->mReducedWidth:I
    invoke-static {v4, v5}, Lcom/htc/widget/AbsSpinner;->access$702(Lcom/htc/widget/AbsSpinner;I)I

    .line 847
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v5

    #setter for: Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I
    invoke-static {v4, v5}, Lcom/htc/widget/AbsSpinner;->access$802(Lcom/htc/widget/AbsSpinner;I)I

    .line 848
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v1

    .line 849
    .local v1, firstVisPos:I
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner;->getChildCount()I

    move-result v0

    .line 850
    .local v0, count:I
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 851
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 853
    :cond_0
    move v2, v1

    .local v2, i:I
    :goto_0
    if-gt v2, v0, :cond_1

    .line 854
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    sub-int v5, v2, v1

    invoke-virtual {v4, v5}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 855
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_2

    .line 856
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iput v2, v4, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    .line 857
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    #setter for: Lcom/htc/widget/AbsSpinner;->mReducedWidth:I
    invoke-static {v4, v5}, Lcom/htc/widget/AbsSpinner;->access$702(Lcom/htc/widget/AbsSpinner;I)I

    .line 862
    .end local v3           #v:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mStartTime:J

    .line 863
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->startCommon()V

    .line 864
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mDistance:I

    .line 865
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMovedDistance:I

    .line 866
    iput v6, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMode:I

    .line 867
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #setter for: Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z
    invoke-static {v4, v6}, Lcom/htc/widget/AbsSpinner;->access$902(Lcom/htc/widget/AbsSpinner;Z)Z

    .line 868
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v4, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    .line 869
    return-void

    .line 853
    .restart local v3       #v:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
