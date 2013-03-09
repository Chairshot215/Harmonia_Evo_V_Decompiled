.class Lcom/htc/android/worldclock/DeskClock$1;
.super Landroid/content/BroadcastReceiver;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$1;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 243
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 244
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$1;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mStopped:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/DeskClock;->access$000(Lcom/htc/android/worldclock/DeskClock;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$1;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->refreshDate()V
    invoke-static {v1}, Lcom/htc/android/worldclock/DeskClock;->access$100(Lcom/htc/android/worldclock/DeskClock;)V

    goto :goto_0

    .line 250
    :cond_2
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 251
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$1;->this$0:Lcom/htc/android/worldclock/DeskClock;

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "level"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/htc/android/worldclock/DeskClock;->handleBatteryUpdate(II)V
    invoke-static {v1, v2, v3}, Lcom/htc/android/worldclock/DeskClock;->access$200(Lcom/htc/android/worldclock/DeskClock;II)V

    goto :goto_0

    .line 254
    :cond_3
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 255
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$1;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->refreshAlarm()V
    invoke-static {v1}, Lcom/htc/android/worldclock/DeskClock;->access$300(Lcom/htc/android/worldclock/DeskClock;)V

    goto :goto_0

    .line 256
    :cond_4
    const-string v1, "android.intent.action.UMS_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 257
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$1;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/DeskClock;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/android/worldclock/WorldClockTabControl;

    check-cast v1, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/WorldClockTabControl;->initScreenOrientation()V

    goto :goto_0

    .line 258
    :cond_5
    const-string v1, "com.htc.intent.action.next_alarm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$1;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->refreshAlarm()V
    invoke-static {v1}, Lcom/htc/android/worldclock/DeskClock;->access$300(Lcom/htc/android/worldclock/DeskClock;)V

    goto :goto_0
.end method
