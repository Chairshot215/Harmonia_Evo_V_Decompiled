.class Lcom/htc/android/worldclock/Timer$6;
.super Landroid/os/Handler;
.source "Timer.java"


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
    .line 333
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$6;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 336
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 337
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 342
    :goto_0
    return-void

    .line 339
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$6;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->refreshResume()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$1100(Lcom/htc/android/worldclock/Timer;)V

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x324
        :pswitch_0
    .end packed-switch
.end method
