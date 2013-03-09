.class Lcom/htc/clock/util/time/TimeCtrl$MyBGHandler;
.super Landroid/os/Handler;
.source "TimeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock/util/time/TimeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/time/TimeCtrl;


# direct methods
.method public constructor <init>(Lcom/htc/clock/util/time/TimeCtrl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/htc/clock/util/time/TimeCtrl$MyBGHandler;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    .line 172
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 173
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 176
    iget v2, p1, Landroid/os/Message;->what:I

    .line 177
    .local v2, what:I
    packed-switch v2, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v3, p0, Lcom/htc/clock/util/time/TimeCtrl$MyBGHandler;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    iget-object v3, v3, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 180
    iget-object v3, p0, Lcom/htc/clock/util/time/TimeCtrl$MyBGHandler;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    #calls: Lcom/htc/clock/util/time/TimeCtrl;->getNextSecTime()J
    invoke-static {v3}, Lcom/htc/clock/util/time/TimeCtrl;->access$100(Lcom/htc/clock/util/time/TimeCtrl;)J

    move-result-wide v0

    .line 181
    .local v0, next:J
    iget-object v3, p0, Lcom/htc/clock/util/time/TimeCtrl$MyBGHandler;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    iget-object v3, v3, Lcom/htc/clock/util/time/TimeCtrl;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    invoke-static {v3, v4, v0, v1}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    goto :goto_0

    .line 184
    .end local v0           #next:J
    :pswitch_1
    iget-object v3, p0, Lcom/htc/clock/util/time/TimeCtrl$MyBGHandler;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v3}, Lcom/htc/clock/util/time/TimeCtrl;->handlerSettingChanged()V

    goto :goto_0

    .line 187
    :pswitch_2
    iget-object v3, p0, Lcom/htc/clock/util/time/TimeCtrl$MyBGHandler;->this$0:Lcom/htc/clock/util/time/TimeCtrl;

    invoke-virtual {v3}, Lcom/htc/clock/util/time/TimeCtrl;->handlerInit()V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
