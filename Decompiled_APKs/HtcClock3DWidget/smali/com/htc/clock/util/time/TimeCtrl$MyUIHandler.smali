.class Lcom/htc/clock/util/time/TimeCtrl$MyUIHandler;
.super Landroid/os/Handler;
.source "TimeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock/util/time/TimeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/time/TimeCtrl;


# direct methods
.method constructor <init>(Lcom/htc/clock/util/time/TimeCtrl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyUIHandler;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    .line 196
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    .line 200
    .local v0, what:I
    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyUIHandler;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    iget-object v1, v1, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 203
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyUIHandler;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/time/TimeCtrl;->onSecond()V

    .line 204
    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl$MyUIHandler;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    #calls: Lcom/htc/clock/util/time/TimeCtrl;->getNextSecTime()J
    invoke-static {v2}, Lcom/htc/clock/util/time/TimeCtrl;->access$100(Lcom/htc/clock/util/time/TimeCtrl;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/clock/util/time/TimeCtrl$MyUIHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyUIHandler;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/time/TimeCtrl;->onMinute()V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyUIHandler;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/time/TimeCtrl;->onTimeChanged()V

    goto :goto_0

    .line 213
    :pswitch_3
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyUIHandler;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/time/TimeCtrl;->onTimeZoneChanged()V

    goto :goto_0

    .line 216
    :pswitch_4
    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyUIHandler;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/time/TimeCtrl;->onSettingChanged()V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
