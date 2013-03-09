.class Lcom/htc/android/worldclock/Timer$2;
.super Landroid/os/Handler;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Timer;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Timer;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Timer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$2;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 190
    :pswitch_0
    const-string v0, "WHAT_ON_INIT"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$2;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->onInitParent()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$100(Lcom/htc/android/worldclock/Timer;)V

    goto :goto_0

    .line 194
    :pswitch_1
    const-string v0, "WHAT_ON_RINGTONE"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$2;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->onRingtone()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$200(Lcom/htc/android/worldclock/Timer;)V

    goto :goto_0

    .line 198
    :pswitch_2
    const-string v0, "WHAT_ON_RESUME"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$2;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->onDoResume()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$300(Lcom/htc/android/worldclock/Timer;)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
