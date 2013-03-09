.class Lcom/htc/android/worldclock/DeskClock$13;
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
    .line 2114
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$13;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2117
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 2118
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$13;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mStopped:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/DeskClock;->access$000(Lcom/htc/android/worldclock/DeskClock;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2126
    :cond_0
    :goto_0
    return-void

    .line 2122
    :cond_1
    const-string v1, "data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/util/weather/WSPData;

    .line 2123
    .local v0, data:Lcom/htc/util/weather/WSPData;
    invoke-virtual {v0}, Lcom/htc/util/weather/WSPData;->hasWeatherData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2124
    iget-object v1, p0, Lcom/htc/android/worldclock/DeskClock$13;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->updateWeatherData(Lcom/htc/util/weather/WSPData;)V
    invoke-static {v1, v0}, Lcom/htc/android/worldclock/DeskClock;->access$3900(Lcom/htc/android/worldclock/DeskClock;Lcom/htc/util/weather/WSPData;)V

    goto :goto_0
.end method
