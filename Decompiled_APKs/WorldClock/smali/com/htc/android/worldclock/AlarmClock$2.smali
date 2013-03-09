.class Lcom/htc/android/worldclock/AlarmClock$2;
.super Landroid/os/Handler;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmClock;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmClock;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmClock$2;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$2;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    #calls: Lcom/htc/android/worldclock/AlarmClock;->onInitParent()V
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmClock;->access$100(Lcom/htc/android/worldclock/AlarmClock;)V

    .line 169
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$2;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/AlarmClock;->onInitChild()V

    goto :goto_0

    .line 172
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$2;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    #calls: Lcom/htc/android/worldclock/AlarmClock;->updateAlarmClock()V
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmClock;->access$200(Lcom/htc/android/worldclock/AlarmClock;)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
