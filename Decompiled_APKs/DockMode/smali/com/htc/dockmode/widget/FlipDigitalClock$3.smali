.class Lcom/htc/dockmode/widget/FlipDigitalClock$3;
.super Ljava/lang/Object;
.source "FlipDigitalClock.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dockmode/widget/FlipDigitalClock;->applyRotationTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/widget/FlipDigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$3;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$3;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinMask:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$600(Lcom/htc/dockmode/widget/FlipDigitalClock;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 400
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$3;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mHourMask:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$700(Lcom/htc/dockmode/widget/FlipDigitalClock;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 401
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 404
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 407
    return-void
.end method
