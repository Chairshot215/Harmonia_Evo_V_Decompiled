.class Lcom/htc/dockmode/widget/FlipDigitalClock$2;
.super Landroid/content/BroadcastReceiver;
.source "FlipDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/widget/FlipDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/widget/FlipDigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$2;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 93
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$2;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mLive:Z
    invoke-static {v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$200(Lcom/htc/dockmode/widget/FlipDigitalClock;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$2;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    #setter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$302(Lcom/htc/dockmode/widget/FlipDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 99
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$2;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-virtual {v1, v3}, Lcom/htc/dockmode/widget/FlipDigitalClock;->onTimeChanged(Z)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$2;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #calls: Lcom/htc/dockmode/widget/FlipDigitalClock;->resetTimer()V
    invoke-static {v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$400(Lcom/htc/dockmode/widget/FlipDigitalClock;)V

    .line 102
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$2;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-virtual {v1, v3}, Lcom/htc/dockmode/widget/FlipDigitalClock;->onTimeChanged(Z)V

    goto :goto_0

    .line 103
    :cond_3
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$2;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    iput-boolean v3, v1, Lcom/htc/dockmode/widget/FlipDigitalClock;->mIsResume:Z

    .line 105
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$2;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    iget-object v2, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$2;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mStartAnimation:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$500(Lcom/htc/dockmode/widget/FlipDigitalClock;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/dockmode/widget/FlipDigitalClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 106
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$2;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    iget-object v2, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$2;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    #getter for: Lcom/htc/dockmode/widget/FlipDigitalClock;->mStartAnimation:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/htc/dockmode/widget/FlipDigitalClock;->access$500(Lcom/htc/dockmode/widget/FlipDigitalClock;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/dockmode/widget/FlipDigitalClock;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
