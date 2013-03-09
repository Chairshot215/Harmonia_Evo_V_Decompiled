.class Lcom/android/smith/BatteryLogger$1;
.super Landroid/os/Handler;
.source "BatteryLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/BatteryLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/smith/BatteryLogger;


# direct methods
.method constructor <init>(Lcom/android/smith/BatteryLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/smith/BatteryLogger$1;->this$0:Lcom/android/smith/BatteryLogger;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    .line 486
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 518
    :goto_0
    return-void

    .line 489
    :pswitch_0
    iget-object v1, p0, Lcom/android/smith/BatteryLogger$1;->this$0:Lcom/android/smith/BatteryLogger;

    #calls: Lcom/android/smith/BatteryLogger;->updateState()V
    invoke-static {v1}, Lcom/android/smith/BatteryLogger;->access$000(Lcom/android/smith/BatteryLogger;)V

    goto :goto_0

    .line 493
    :pswitch_1
    iget-object v1, p0, Lcom/android/smith/BatteryLogger$1;->this$0:Lcom/android/smith/BatteryLogger;

    #getter for: Lcom/android/smith/BatteryLogger;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/android/smith/BatteryLogger;->access$100(Lcom/android/smith/BatteryLogger;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 495
    iget-object v1, p0, Lcom/android/smith/BatteryLogger$1;->this$0:Lcom/android/smith/BatteryLogger;

    #getter for: Lcom/android/smith/BatteryLogger;->mTextMessage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/smith/BatteryLogger;->access$400(Lcom/android/smith/BatteryLogger;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/smith/BatteryLogger$1;->this$0:Lcom/android/smith/BatteryLogger;

    iget-object v4, p0, Lcom/android/smith/BatteryLogger$1;->this$0:Lcom/android/smith/BatteryLogger;

    #getter for: Lcom/android/smith/BatteryLogger;->mCalendar:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/smith/BatteryLogger;->access$100(Lcom/android/smith/BatteryLogger;)Ljava/util/Calendar;

    move-result-object v4

    #calls: Lcom/android/smith/BatteryLogger;->composeTime(Ljava/util/Calendar;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/smith/BatteryLogger;->access$200(Lcom/android/smith/BatteryLogger;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CPU Usage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/smith/BatteryLogger$1;->this$0:Lcom/android/smith/BatteryLogger;

    invoke-static {}, Lcom/android/smith/HtcNative;->getCpuUsage()F

    move-result v4

    #calls: Lcom/android/smith/BatteryLogger;->composeFloat(F)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/smith/BatteryLogger;->access$300(Lcom/android/smith/BatteryLogger;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v1, p0, Lcom/android/smith/BatteryLogger$1;->this$0:Lcom/android/smith/BatteryLogger;

    #getter for: Lcom/android/smith/BatteryLogger;->mSocket:Lcom/android/smith/ClientLocalSocket;
    invoke-static {v1}, Lcom/android/smith/BatteryLogger;->access$500(Lcom/android/smith/BatteryLogger;)Lcom/android/smith/ClientLocalSocket;

    move-result-object v1

    const-string v2, ":getdata:"

    invoke-virtual {v1, v2}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/smith/BatteryLogger$1;->this$0:Lcom/android/smith/BatteryLogger;

    #getter for: Lcom/android/smith/BatteryLogger;->mTextInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/smith/BatteryLogger;->access$600(Lcom/android/smith/BatteryLogger;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Error to get data!"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 506
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 508
    invoke-virtual {p0, v5}, Lcom/android/smith/BatteryLogger$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/smith/BatteryLogger$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/android/smith/BatteryLogger$1;->this$0:Lcom/android/smith/BatteryLogger;

    #getter for: Lcom/android/smith/BatteryLogger;->mTextInfo:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/smith/BatteryLogger;->access$600(Lcom/android/smith/BatteryLogger;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    invoke-virtual {p0, v5}, Lcom/android/smith/BatteryLogger$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/smith/BatteryLogger$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 486
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
