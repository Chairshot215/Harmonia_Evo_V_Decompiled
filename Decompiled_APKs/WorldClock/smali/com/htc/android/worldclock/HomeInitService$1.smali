.class Lcom/htc/android/worldclock/HomeInitService$1;
.super Landroid/os/Handler;
.source "HomeInitService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/HomeInitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/HomeInitService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/HomeInitService;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/android/worldclock/HomeInitService$1;->this$0:Lcom/htc/android/worldclock/HomeInitService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 25
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 26
    iget-object v0, p0, Lcom/htc/android/worldclock/HomeInitService$1;->this$0:Lcom/htc/android/worldclock/HomeInitService;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/HomeInitService;->stopSelf()V

    .line 27
    return-void
.end method
