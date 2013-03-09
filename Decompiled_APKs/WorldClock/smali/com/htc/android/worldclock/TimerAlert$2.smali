.class Lcom/htc/android/worldclock/TimerAlert$2;
.super Ljava/lang/Object;
.source "TimerAlert.java"

# interfaces
.implements Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/TimerAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimerAlert;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimerAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerAlert$2;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKilled()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 77
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 78
    const-string v0, "onKilled()"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$2;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    invoke-static {v0}, Lcom/htc/android/worldclock/AlertUtils;->sendTimerTimeout(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$2;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/worldclock/TimerAlert;->mIsDismissed:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/TimerAlert;->access$002(Lcom/htc/android/worldclock/TimerAlert;Z)Z

    .line 84
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$2;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #calls: Lcom/htc/android/worldclock/TimerAlert;->StopTimer()V
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerAlert;->access$100(Lcom/htc/android/worldclock/TimerAlert;)V

    .line 85
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$2;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #calls: Lcom/htc/android/worldclock/TimerAlert;->releaseLocks()V
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerAlert;->access$200(Lcom/htc/android/worldclock/TimerAlert;)V

    .line 86
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$2;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #setter for: Lcom/htc/android/worldclock/TimerAlert;->mIsDismissed:Z
    invoke-static {v0, v2}, Lcom/htc/android/worldclock/TimerAlert;->access$002(Lcom/htc/android/worldclock/TimerAlert;Z)Z

    .line 87
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$2;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #setter for: Lcom/htc/android/worldclock/TimerAlert;->mIsKilled:Z
    invoke-static {v0, v2}, Lcom/htc/android/worldclock/TimerAlert;->access$302(Lcom/htc/android/worldclock/TimerAlert;Z)Z

    .line 88
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$2;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    const/16 v1, 0x21

    #setter for: Lcom/htc/android/worldclock/TimerAlert;->mTimerType:I
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/TimerAlert;->access$402(Lcom/htc/android/worldclock/TimerAlert;I)I

    .line 89
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$2;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #getter for: Lcom/htc/android/worldclock/TimerAlert;->mIsLockScreenExist:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerAlert;->access$500(Lcom/htc/android/worldclock/TimerAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$2;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    new-instance v1, Lcom/htc/android/worldclock/TimerAlert$2$1;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/TimerAlert$2$1;-><init>(Lcom/htc/android/worldclock/TimerAlert$2;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/TimerAlert;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 102
    :cond_0
    return-void
.end method
