.class Lcom/htc/dockmode/clock/ClockControl$3;
.super Landroid/content/BroadcastReceiver;
.source "ClockControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/clock/ClockControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/clock/ClockControl;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/clock/ClockControl;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/htc/dockmode/clock/ClockControl$3;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl$3;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #getter for: Lcom/htc/dockmode/clock/ClockControl;->mStopped:Z
    invoke-static {v1}, Lcom/htc/dockmode/clock/ClockControl;->access$000(Lcom/htc/dockmode/clock/ClockControl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl$3;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #calls: Lcom/htc/dockmode/clock/ClockControl;->refreshDate()V
    invoke-static {v1}, Lcom/htc/dockmode/clock/ClockControl;->access$500(Lcom/htc/dockmode/clock/ClockControl;)V

    .line 214
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl$3;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #calls: Lcom/htc/dockmode/clock/ClockControl;->refreshAlarm()V
    invoke-static {v1}, Lcom/htc/dockmode/clock/ClockControl;->access$600(Lcom/htc/dockmode/clock/ClockControl;)V

    goto :goto_0

    .line 215
    :cond_2
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl$3;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #calls: Lcom/htc/dockmode/clock/ClockControl;->refreshTime()V
    invoke-static {v1}, Lcom/htc/dockmode/clock/ClockControl;->access$700(Lcom/htc/dockmode/clock/ClockControl;)V

    .line 217
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl$3;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #calls: Lcom/htc/dockmode/clock/ClockControl;->refreshAlarm()V
    invoke-static {v1}, Lcom/htc/dockmode/clock/ClockControl;->access$600(Lcom/htc/dockmode/clock/ClockControl;)V

    goto :goto_0

    .line 218
    :cond_3
    const-string v1, "com.htc.intent.action.next_alarm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/htc/dockmode/clock/ClockControl$3;->this$0:Lcom/htc/dockmode/clock/ClockControl;

    #calls: Lcom/htc/dockmode/clock/ClockControl;->refreshAlarm()V
    invoke-static {v1}, Lcom/htc/dockmode/clock/ClockControl;->access$600(Lcom/htc/dockmode/clock/ClockControl;)V

    goto :goto_0
.end method
