.class Lcom/htc/android/worldclock/TimerService$4;
.super Ljava/lang/Object;
.source "TimerService.java"

# interfaces
.implements Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;


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
    .line 220
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerService$4;->this$0:Lcom/htc/android/worldclock/TimerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKilled()V
    .locals 3

    .prologue
    .line 223
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 224
    const-string v0, "onKilled()"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$4;->this$0:Lcom/htc/android/worldclock/TimerService;

    invoke-static {v0}, Lcom/htc/android/worldclock/AlertUtils;->sendTimerTimeout(Landroid/content/Context;)V

    .line 230
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$4;->this$0:Lcom/htc/android/worldclock/TimerService;

    const/4 v1, 0x0

    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Lcom/htc/android/worldclock/AlertUtils;->timerAlert(Landroid/content/Context;ZI)V

    .line 232
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/TimerService$4$1;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/TimerService$4$1;-><init>(Lcom/htc/android/worldclock/TimerService$4;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    return-void
.end method
