.class Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/SwipeySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollRunnable"
.end annotation


# instance fields
.field mOnDoneRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 751
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->access$1500(Lcom/google/android/common/SwipeySwitcher;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #setter for: Lcom/google/android/common/SwipeySwitcher;->mAnimatingScroll:Z
    invoke-static {v0, v3}, Lcom/google/android/common/SwipeySwitcher;->access$1602(Lcom/google/android/common/SwipeySwitcher;Z)Z

    .line 753
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->this$0:Lcom/google/android/common/SwipeySwitcher;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$1500(Lcom/google/android/common/SwipeySwitcher;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    .line 754
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-virtual {v0}, Lcom/google/android/common/SwipeySwitcher;->postInvalidate()V

    .line 755
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/common/SwipeySwitcher;->access$1700(Lcom/google/android/common/SwipeySwitcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->this$0:Lcom/google/android/common/SwipeySwitcher;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$1500(Lcom/google/android/common/SwipeySwitcher;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    .line 758
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->this$0:Lcom/google/android/common/SwipeySwitcher;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #getter for: Lcom/google/android/common/SwipeySwitcher;->mNextSelection:I
    invoke-static {v1}, Lcom/google/android/common/SwipeySwitcher;->access$1800(Lcom/google/android/common/SwipeySwitcher;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/common/SwipeySwitcher;->setSelection(I)V

    .line 765
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->this$0:Lcom/google/android/common/SwipeySwitcher;

    #setter for: Lcom/google/android/common/SwipeySwitcher;->mClearAnimatingScroll:Z
    invoke-static {v0, v3}, Lcom/google/android/common/SwipeySwitcher;->access$1902(Lcom/google/android/common/SwipeySwitcher;Z)Z

    .line 766
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->mOnDoneRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->mOnDoneRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
