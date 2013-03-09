.class Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;
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
    name = "ChangeWidthRunnable"
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

.field private mTargetWidth:I

.field final synthetic this$0:Lcom/htc/widget/AbsSpinner;


# direct methods
.method private constructor <init>(Lcom/htc/widget/AbsSpinner;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 736
    iput-object p1, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mMode:I

    .line 742
    iput v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mDistance:I

    .line 743
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;-><init>(Lcom/htc/widget/AbsSpinner;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->end()V

    return-void
.end method

.method private changeWidth(I)V
    .locals 1
    .parameter "step"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-static {v0, p1}, Lcom/htc/widget/AbsSpinner;->access$312(Lcom/htc/widget/AbsSpinner;I)I

    .line 803
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    .line 804
    return-void
.end method

.method private end()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 807
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 808
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #setter for: Lcom/htc/widget/AbsSpinner;->mChangeWidthAnimation:Z
    invoke-static {v0, v2}, Lcom/htc/widget/AbsSpinner;->access$402(Lcom/htc/widget/AbsSpinner;Z)Z

    .line 809
    iput v2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mMode:I

    .line 810
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #getter for: Lcom/htc/widget/AbsSpinner;->mIsDragBinGridView:Z
    invoke-static {v0}, Lcom/htc/widget/AbsSpinner;->access$500(Lcom/htc/widget/AbsSpinner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->setShrinkedPosition(I)V

    .line 812
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->setExpandedPosition(I)V

    .line 817
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    iget v1, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mTargetWidth:I

    #setter for: Lcom/htc/widget/AbsSpinner;->mAnimationWidth:I
    invoke-static {v0, v1}, Lcom/htc/widget/AbsSpinner;->access$302(Lcom/htc/widget/AbsSpinner;I)I

    .line 818
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    .line 819
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->setShrinkedPosition(I)V

    .line 815
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->setExpandedPosition(I)V

    goto :goto_0
.end method

.method private getTargetDistance()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xc8

    .line 790
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 791
    .local v0, now:J
    const/4 v2, 0x0

    .line 793
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mStartTime:J

    sub-long v3, v0, v3

    cmp-long v3, v3, v7

    if-ltz v3, :cond_0

    .line 794
    iget v2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mDistance:I

    .line 798
    :goto_0
    return v2

    .line 796
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mStartTime:J

    sub-long v3, v0, v3

    iget v5, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mDistance:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    div-long/2addr v3, v7

    long-to-int v2, v3

    goto :goto_0
.end method

.method private startCommon()V
    .locals 2

    .prologue
    .line 764
    iget v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 765
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->end()V

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 767
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 771
    iget v2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mMode:I

    if-nez v2, :cond_0

    .line 772
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->end()V

    .line 787
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->getTargetDistance()I

    move-result v1

    .line 777
    .local v1, targetDistance:I
    iget v2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mDistance:I

    if-ne v1, v2, :cond_1

    .line 778
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->end()V

    goto :goto_0

    .line 782
    :cond_1
    iget v2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mMovedDistance:I

    sub-int v0, v1, v2

    .line 783
    .local v0, step:I
    invoke-direct {p0, v0}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->changeWidth(I)V

    .line 784
    iput v1, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mMovedDistance:I

    .line 785
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v2, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(II)V
    .locals 3
    .parameter "orgWidth"
    .parameter "targetWidth"

    .prologue
    const/4 v2, 0x1

    .line 748
    iput p2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mTargetWidth:I

    .line 749
    if-ne p1, p2, :cond_0

    .line 750
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->end()V

    .line 761
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mStartTime:J

    .line 754
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->startCommon()V

    .line 755
    sub-int v0, p2, p1

    iput v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mDistance:I

    .line 756
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mMovedDistance:I

    .line 757
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #setter for: Lcom/htc/widget/AbsSpinner;->mAnimationWidth:I
    invoke-static {v0, p1}, Lcom/htc/widget/AbsSpinner;->access$302(Lcom/htc/widget/AbsSpinner;I)I

    .line 758
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    #setter for: Lcom/htc/widget/AbsSpinner;->mChangeWidthAnimation:Z
    invoke-static {v0, v2}, Lcom/htc/widget/AbsSpinner;->access$402(Lcom/htc/widget/AbsSpinner;Z)Z

    .line 759
    iput v2, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->mMode:I

    .line 760
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->this$0:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, p0}, Lcom/htc/widget/AbsSpinner;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
