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

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMode:I

    iput v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mDistance:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/widget/AbsSpinner;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/widget/AbsSpinner$WaveRunnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->end()V

    return-void
.end method

.method private changeWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-static {v0, p1}, Lcom/htc/widget/AbsSpinner;->access$812(Lcom/htc/widget/AbsSpinner;I)I

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-static {v0, p1}, Lcom/htc/widget/AbsSpinner;->access$720(Lcom/htc/widget/AbsSpinner;I)I

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    return-void
.end method

.method private end()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I
    invoke-static {v0, v1}, Lcom/htc/widget/AbsSpinner;->access$802(Lcom/htc/widget/AbsSpinner;I)I

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v1

    #setter for: Lcom/htc/widget/AbsSpinner;->mReducedWidth:I
    invoke-static {v0, v1}, Lcom/htc/widget/AbsSpinner;->access$702(Lcom/htc/widget/AbsSpinner;I)I

    iput v2, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMode:I

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #setter for: Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z
    invoke-static {v0, v2}, Lcom/htc/widget/AbsSpinner;->access$902(Lcom/htc/widget/AbsSpinner;Z)Z

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #getter for: Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z
    invoke-static {v0}, Lcom/htc/widget/AbsSpinner;->access$1000(Lcom/htc/widget/AbsSpinner;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #setter for: Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z
    invoke-static {v0, v2}, Lcom/htc/widget/AbsSpinner;->access$1002(Lcom/htc/widget/AbsSpinner;Z)Z

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->setShrinkedPosition(I)V

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #calls: Lcom/htc/widget/AbsSpinner;->onAnimationEnd()V
    invoke-static {v0}, Lcom/htc/widget/AbsSpinner;->access$1100(Lcom/htc/widget/AbsSpinner;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    goto :goto_0
.end method

.method private getTargetDistance()I
    .locals 9

    const-wide/16 v7, 0xc8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mStartTime:J

    sub-long v3, v0, v3

    cmp-long v3, v3, v7

    if-ltz v3, :cond_0

    iget v2, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mDistance:I

    :goto_0
    return v2

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

    iget v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->end()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v2, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMode:I

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->end()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->getTargetDistance()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mDistance:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->end()V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMovedDistance:I

    sub-int v0, v1, v2

    invoke-direct {p0, v0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->changeWidth(I)V

    iput v1, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMovedDistance:I

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v2, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    const/4 v5, -0x1

    iput v5, v4, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v5

    #setter for: Lcom/htc/widget/AbsSpinner;->mReducedWidth:I
    invoke-static {v4, v5}, Lcom/htc/widget/AbsSpinner;->access$702(Lcom/htc/widget/AbsSpinner;I)I

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v5

    #setter for: Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I
    invoke-static {v4, v5}, Lcom/htc/widget/AbsSpinner;->access$802(Lcom/htc/widget/AbsSpinner;I)I

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v1

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner;->getChildCount()I

    move-result v0

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :cond_0
    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_1

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    sub-int v5, v2, v1

    invoke-virtual {v4, v5}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iput v2, v4, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v5, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    #setter for: Lcom/htc/widget/AbsSpinner;->mReducedWidth:I
    invoke-static {v4, v5}, Lcom/htc/widget/AbsSpinner;->access$702(Lcom/htc/widget/AbsSpinner;I)I

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mStartTime:J

    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->startCommon()V

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mDistance:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMovedDistance:I

    iput v6, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->mMode:I

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #setter for: Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z
    invoke-static {v4, v6}, Lcom/htc/widget/AbsSpinner;->access$902(Lcom/htc/widget/AbsSpinner;Z)Z

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner$WaveRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v4, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
