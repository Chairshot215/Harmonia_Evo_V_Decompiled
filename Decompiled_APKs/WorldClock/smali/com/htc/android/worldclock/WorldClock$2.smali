.class Lcom/htc/android/worldclock/WorldClock$2;
.super Landroid/os/Handler;
.source "WorldClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/WorldClock;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/WorldClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/WorldClock;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/htc/android/worldclock/WorldClock$2;->this$0:Lcom/htc/android/worldclock/WorldClock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 214
    :sswitch_0
    const-string v0, "WHAT_ON_INIT"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$2;->this$0:Lcom/htc/android/worldclock/WorldClock;

    #calls: Lcom/htc/android/worldclock/WorldClock;->onInitParent()V
    invoke-static {v0}, Lcom/htc/android/worldclock/WorldClock;->access$100(Lcom/htc/android/worldclock/WorldClock;)V

    .line 216
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$2;->this$0:Lcom/htc/android/worldclock/WorldClock;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/WorldClock;->onInitChild()V

    .line 217
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$2;->this$0:Lcom/htc/android/worldclock/WorldClock;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/worldclock/WorldClock;->mIsDataReady:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/WorldClock;->access$202(Lcom/htc/android/worldclock/WorldClock;Z)Z

    goto :goto_0

    .line 220
    :sswitch_1
    const-string v0, "WHAT_ON_NONUI_ACTION"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$2;->this$0:Lcom/htc/android/worldclock/WorldClock;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/android/worldclock/WorldClock;->onNonUIAction(I)V
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/WorldClock;->access$300(Lcom/htc/android/worldclock/WorldClock;I)V

    goto :goto_0

    .line 224
    :sswitch_2
    const-string v0, "WHAT_ON_CITY_UPDATE"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$2;->this$0:Lcom/htc/android/worldclock/WorldClock;

    #calls: Lcom/htc/android/worldclock/WorldClock;->onCityUpdate()V
    invoke-static {v0}, Lcom/htc/android/worldclock/WorldClock;->access$400(Lcom/htc/android/worldclock/WorldClock;)V

    goto :goto_0

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_2
        0x6e -> :sswitch_1
    .end sparse-switch
.end method
