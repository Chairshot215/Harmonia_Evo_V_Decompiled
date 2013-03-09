.class Lcom/htc/android/worldclock/TimerAlert$1;
.super Ljava/lang/Object;
.source "TimerAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 41
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerAlert$1;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 45
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$1;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/worldclock/TimerAlert;->mIsDismissed:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/TimerAlert;->access$002(Lcom/htc/android/worldclock/TimerAlert;Z)Z

    .line 46
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$1;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    #calls: Lcom/htc/android/worldclock/TimerAlert;->StopTimer()V
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerAlert;->access$100(Lcom/htc/android/worldclock/TimerAlert;)V

    .line 47
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert$1;->this$0:Lcom/htc/android/worldclock/TimerAlert;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/TimerAlert;->finish()V

    .line 48
    return-void
.end method
