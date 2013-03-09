.class Lcom/htc/android/worldclock/TimerService$6$1;
.super Ljava/lang/Object;
.source "TimerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/TimerService$6;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/TimerService$6;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimerService$6;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerService$6$1;->this$1:Lcom/htc/android/worldclock/TimerService$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$6$1;->this$1:Lcom/htc/android/worldclock/TimerService$6;

    iget-object v0, v0, Lcom/htc/android/worldclock/TimerService$6;->this$0:Lcom/htc/android/worldclock/TimerService;

    iget-object v1, p0, Lcom/htc/android/worldclock/TimerService$6$1;->this$1:Lcom/htc/android/worldclock/TimerService$6;

    iget-object v1, v1, Lcom/htc/android/worldclock/TimerService$6;->this$0:Lcom/htc/android/worldclock/TimerService;

    #calls: Lcom/htc/android/worldclock/TimerService;->timesUp(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/TimerService;->access$300(Lcom/htc/android/worldclock/TimerService;Landroid/content/Context;)V

    .line 302
    return-void
.end method
