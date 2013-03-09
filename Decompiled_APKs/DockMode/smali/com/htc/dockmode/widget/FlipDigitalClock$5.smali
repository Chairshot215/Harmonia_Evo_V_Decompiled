.class Lcom/htc/dockmode/widget/FlipDigitalClock$5;
.super Ljava/lang/Object;
.source "FlipDigitalClock.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dockmode/widget/FlipDigitalClock;->applyRotation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

.field final synthetic val$rotation:Lcom/htc/dockmode/widget/Rotate3dAnimation;

.field final synthetic val$trans2:Landroid/view/animation/TranslateAnimation;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/widget/FlipDigitalClock;Lcom/htc/dockmode/widget/Rotate3dAnimation;Landroid/view/animation/TranslateAnimation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    iput-object p2, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->val$rotation:Lcom/htc/dockmode/widget/Rotate3dAnimation;

    iput-object p3, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->val$trans2:Landroid/view/animation/TranslateAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinMask:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$600(Lcom/htc/dockmode/widget/FlipDigitalClock;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 578
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mHourMask:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$700(Lcom/htc/dockmode/widget/FlipDigitalClock;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 579
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 582
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-static {v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$910(Lcom/htc/dockmode/widget/FlipDigitalClock;)I

    .line 583
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    iget-object v2, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I
    invoke-static {v2}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$800(Lcom/htc/dockmode/widget/FlipDigitalClock;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinuteFlipCount:I
    invoke-static {v3}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$900(Lcom/htc/dockmode/widget/FlipDigitalClock;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    #setter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I
    invoke-static {v1, v2}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$1102(Lcom/htc/dockmode/widget/FlipDigitalClock;I)I

    .line 584
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I
    invoke-static {v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$1100(Lcom/htc/dockmode/widget/FlipDigitalClock;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v0, v1, 0x3c

    .line 585
    .local v0, nextMinute:I
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_next:Lcom/htc/dockmode/widget/FlipView;
    invoke-static {v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$1300(Lcom/htc/dockmode/widget/FlipDigitalClock;)Lcom/htc/dockmode/widget/FlipView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 586
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_up:Lcom/htc/dockmode/widget/FlipView;
    invoke-static {v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$1400(Lcom/htc/dockmode/widget/FlipDigitalClock;)Lcom/htc/dockmode/widget/FlipView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I
    invoke-static {v2}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$1100(Lcom/htc/dockmode/widget/FlipDigitalClock;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 587
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightUpContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$1500(Lcom/htc/dockmode/widget/FlipDigitalClock;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->val$rotation:Lcom/htc/dockmode/widget/Rotate3dAnimation;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 588
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinMask:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$600(Lcom/htc/dockmode/widget/FlipDigitalClock;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$5;->val$trans2:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 589
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 592
    return-void
.end method
