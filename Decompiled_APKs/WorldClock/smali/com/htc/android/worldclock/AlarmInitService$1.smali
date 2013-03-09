.class Lcom/htc/android/worldclock/AlarmInitService$1;
.super Landroid/os/Handler;
.source "AlarmInitService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmInitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmInitService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmInitService;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitService$1;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 40
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 41
    const-string v0, "stop service"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/htc/android/worldclock/AlarmInitWakeLock;->release()V

    .line 43
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService$1;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/AlarmInitService;->stopSelf()V

    .line 44
    return-void
.end method
