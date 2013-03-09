.class Lcom/htc/clock/util/time/TimeCtrl$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock/util/time/TimeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/time/TimeCtrl;


# direct methods
.method private constructor <init>(Lcom/htc/clock/util/time/TimeCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyReceiver;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/clock/util/time/TimeCtrl;Lcom/htc/clock/util/time/TimeCtrl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/htc/clock/util/time/TimeCtrl$MyReceiver;-><init>(Lcom/htc/clock/util/time/TimeCtrl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0x3eb

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyReceiver;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    iget-object v1, v1, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 150
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyReceiver;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    iget-object v1, v1, Lcom/htc/clock/util/time/TimeCtrl;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyReceiver;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    iget-object v1, v1, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 154
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyReceiver;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    iget-object v1, v1, Lcom/htc/clock/util/time/TimeCtrl;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Lcom/htc/clock/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 155
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyReceiver;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    iget-object v1, v1, Lcom/htc/clock/util/time/TimeCtrl;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto :goto_0

    .line 157
    :cond_2
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyReceiver;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/time/TimeCtrl;->handlerTimeZoneChanged()V

    goto :goto_0
.end method
