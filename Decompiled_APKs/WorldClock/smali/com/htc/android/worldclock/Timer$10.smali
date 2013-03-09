.class Lcom/htc/android/worldclock/Timer$10;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 683
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$10;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 686
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 687
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$10;->this$0:Lcom/htc/android/worldclock/Timer;

    iput v2, v0, Lcom/htc/android/worldclock/Timer;->mState:I

    .line 688
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$10;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$10;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mStartHour:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$1500(Lcom/htc/android/worldclock/Timer;)I

    move-result v1

    #setter for: Lcom/htc/android/worldclock/Timer;->mCurrentHour:I
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/Timer;->access$2402(Lcom/htc/android/worldclock/Timer;I)I

    .line 689
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$10;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$10;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mStartMinute:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$1600(Lcom/htc/android/worldclock/Timer;)I

    move-result v1

    #setter for: Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/Timer;->access$2502(Lcom/htc/android/worldclock/Timer;I)I

    .line 690
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$10;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$10;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mStartSecond:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$1700(Lcom/htc/android/worldclock/Timer;)I

    move-result v1

    #setter for: Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/Timer;->access$2602(Lcom/htc/android/worldclock/Timer;I)I

    .line 691
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$10;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-static {v0, v2, v2, v2, v2}, Lcom/htc/android/worldclock/Timer;->enableAlarmInternal(Landroid/content/Context;ZIII)V

    .line 692
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$10;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->updateButton()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$2900(Lcom/htc/android/worldclock/Timer;)V

    .line 693
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$10;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->updateTimer()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$000(Lcom/htc/android/worldclock/Timer;)V

    .line 694
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$10;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v0, v0, Lcom/htc/android/worldclock/Timer;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$10;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, v1, Lcom/htc/android/worldclock/Timer;->mUpdateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 695
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$10;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->updateTimerProvider()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$3000(Lcom/htc/android/worldclock/Timer;)V

    .line 696
    return-void
.end method
