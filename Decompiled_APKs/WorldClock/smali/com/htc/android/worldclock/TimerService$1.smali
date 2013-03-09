.class Lcom/htc/android/worldclock/TimerService$1;
.super Landroid/os/Handler;
.source "TimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/TimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimerService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimerService;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerService$1;->this$0:Lcom/htc/android/worldclock/TimerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 59
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 60
    const-string v0, "stop service"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/htc/android/worldclock/TimerAlertWakeLock;->release()V

    .line 64
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$1;->this$0:Lcom/htc/android/worldclock/TimerService;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/TimerService;->stopSelf()V

    .line 65
    return-void
.end method
