.class Lcom/htc/android/worldclock/Timer$9;
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
    .line 670
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$9;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 673
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 674
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$9;->this$0:Lcom/htc/android/worldclock/Timer;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/android/worldclock/Timer;->mState:I

    .line 675
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$9;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-static {v0, v2, v2, v2, v2}, Lcom/htc/android/worldclock/Timer;->enableAlarmInternal(Landroid/content/Context;ZIII)V

    .line 676
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$9;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->updateButton()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$2900(Lcom/htc/android/worldclock/Timer;)V

    .line 677
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$9;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->updateTimer()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$000(Lcom/htc/android/worldclock/Timer;)V

    .line 678
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$9;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v0, v0, Lcom/htc/android/worldclock/Timer;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$9;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, v1, Lcom/htc/android/worldclock/Timer;->mUpdateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 679
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$9;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->updateTimerProvider()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$3000(Lcom/htc/android/worldclock/Timer;)V

    .line 680
    return-void
.end method
