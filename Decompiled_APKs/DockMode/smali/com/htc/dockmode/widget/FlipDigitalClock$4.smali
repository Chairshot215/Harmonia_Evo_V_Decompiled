.class Lcom/htc/dockmode/widget/FlipDigitalClock$4;
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


# direct methods
.method constructor <init>(Lcom/htc/dockmode/widget/FlipDigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$4;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$4;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_down:Lcom/htc/dockmode/widget/FlipView;
    invoke-static {v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$1000(Lcom/htc/dockmode/widget/FlipDigitalClock;)Lcom/htc/dockmode/widget/FlipView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$4;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I
    invoke-static {v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$800(Lcom/htc/dockmode/widget/FlipDigitalClock;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$4;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinuteFlipCount:I
    invoke-static {v2}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$900(Lcom/htc/dockmode/widget/FlipDigitalClock;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 553
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 556
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$4;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute:Lcom/htc/dockmode/widget/FlipView;
    invoke-static {v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$1200(Lcom/htc/dockmode/widget/FlipDigitalClock;)Lcom/htc/dockmode/widget/FlipView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$4;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I
    invoke-static {v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$1100(Lcom/htc/dockmode/widget/FlipDigitalClock;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 560
    return-void
.end method
