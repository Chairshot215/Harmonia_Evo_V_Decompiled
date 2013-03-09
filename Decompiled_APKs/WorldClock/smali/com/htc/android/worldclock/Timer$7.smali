.class Lcom/htc/android/worldclock/Timer$7;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Timer;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$7;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 567
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 568
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$7;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$2000(Lcom/htc/android/worldclock/Timer;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$7;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->setCurrentTime()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$2100(Lcom/htc/android/worldclock/Timer;)V

    .line 570
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$7;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$2000(Lcom/htc/android/worldclock/Timer;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setVisibility(I)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$7;->this$0:Lcom/htc/android/worldclock/Timer;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/worldclock/Timer;->mAnimationEnd:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/Timer;->access$2202(Lcom/htc/android/worldclock/Timer;Z)Z

    .line 573
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 577
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 578
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 582
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 583
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$7;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$2000(Lcom/htc/android/worldclock/Timer;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$7;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$2000(Lcom/htc/android/worldclock/Timer;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setVisibility(I)V

    .line 586
    :cond_0
    return-void
.end method
