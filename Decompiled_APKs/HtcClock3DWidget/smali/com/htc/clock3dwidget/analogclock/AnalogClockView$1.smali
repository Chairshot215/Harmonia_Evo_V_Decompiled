.class Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;
.super Ljava/lang/Object;
.source "AnalogClockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)V
    .locals 0
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 761
    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTickerStopped:Z
    invoke-static {v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->access$200(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    #calls: Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->updateTime()V
    invoke-static {v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)V

    .line 764
    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->access$400(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 765
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 766
    .local v0, now:J
    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->access$400(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTicker:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->access$500(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUpdateIntervals:I
    invoke-static {v4}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->access$600(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUpdateIntervals:I
    invoke-static {v8}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->access$600(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)I

    move-result v8

    int-to-long v8, v8

    rem-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v4, v0

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->postAtTime(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 767
    .end local v0           #now:J
    :cond_2
    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mhUiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->access$700(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 768
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 769
    .restart local v0       #now:J
    iget-object v2, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mhUiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->access$700(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mTicker:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->access$500(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUpdateIntervals:I
    invoke-static {v4}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->access$600(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockView$1;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUpdateIntervals:I
    invoke-static {v8}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->access$600(Lcom/htc/clock3dwidget/analogclock/AnalogClockView;)I

    move-result v8

    int-to-long v8, v8

    rem-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
