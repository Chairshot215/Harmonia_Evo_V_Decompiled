.class Lcom/htc/android/worldclock/SetAlarm$1;
.super Landroid/os/Handler;
.source "SetAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/SetAlarm;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/SetAlarm;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/SetAlarm;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm$1;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 175
    :sswitch_0
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$1;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #calls: Lcom/htc/android/worldclock/SetAlarm;->onInitParent()V
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$000(Lcom/htc/android/worldclock/SetAlarm;)V

    goto :goto_0

    .line 178
    :sswitch_1
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$1;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #calls: Lcom/htc/android/worldclock/SetAlarm;->onRingTone()V
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$100(Lcom/htc/android/worldclock/SetAlarm;)V

    goto :goto_0

    .line 181
    :sswitch_2
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$1;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #calls: Lcom/htc/android/worldclock/SetAlarm;->onReport()V
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$200(Lcom/htc/android/worldclock/SetAlarm;)V

    goto :goto_0

    .line 184
    :sswitch_3
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$1;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #calls: Lcom/htc/android/worldclock/SetAlarm;->onDoResume()V
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$300(Lcom/htc/android/worldclock/SetAlarm;)V

    goto :goto_0

    .line 187
    :sswitch_4
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$1;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    new-instance v1, Lcom/htc/android/worldclock/SetAlarm$1$1;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/SetAlarm$1$1;-><init>(Lcom/htc/android/worldclock/SetAlarm$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/SetAlarm;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x259 -> :sswitch_1
        0x25a -> :sswitch_3
        0x25c -> :sswitch_2
        0x1771 -> :sswitch_4
    .end sparse-switch
.end method
