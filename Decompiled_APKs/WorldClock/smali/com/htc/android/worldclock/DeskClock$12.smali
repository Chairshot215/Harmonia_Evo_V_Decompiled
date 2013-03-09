.class Lcom/htc/android/worldclock/DeskClock$12;
.super Landroid/os/Handler;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeskClock;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeskClock;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1630
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$12;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1633
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1634
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1651
    :goto_0
    return-void

    .line 1636
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$12;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->onCityUpdate()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$3100(Lcom/htc/android/worldclock/DeskClock;)V

    goto :goto_0

    .line 1639
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$12;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->onInitParent()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$3200(Lcom/htc/android/worldclock/DeskClock;)V

    goto :goto_0

    .line 1642
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$12;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->onRemains()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$3300(Lcom/htc/android/worldclock/DeskClock;)V

    goto :goto_0

    .line 1645
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$12;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->onDoResume()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$3400(Lcom/htc/android/worldclock/DeskClock;)V

    goto :goto_0

    .line 1648
    :pswitch_4
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$12;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->onAlarmUpdate()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$3500(Lcom/htc/android/worldclock/DeskClock;)V

    goto :goto_0

    .line 1634
    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
