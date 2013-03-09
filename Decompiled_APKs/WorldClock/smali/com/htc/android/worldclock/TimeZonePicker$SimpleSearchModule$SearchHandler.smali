.class Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule$SearchHandler;
.super Landroid/os/Handler;
.source "TimeZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 570
    iput-object p1, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule$SearchHandler;->this$1:Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;

    .line 571
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 572
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 573
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    .line 577
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 578
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 595
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 580
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    .line 581
    .local v1, searchPattern:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule$SearchHandler;->this$1:Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;

    iget-object v3, v3, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #calls: Lcom/htc/android/worldclock/TimeZonePicker;->getInputText()Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/worldclock/TimeZonePicker;->access$700(Lcom/htc/android/worldclock/TimeZonePicker;)Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, textString:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule$SearchHandler;->this$1:Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;

    iget-object v3, v3, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1000(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 584
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 585
    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule$SearchHandler;->this$1:Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;

    #calls: Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->coreSearch(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v3, v1}, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->access$1100(Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 586
    .local v0, c:Landroid/database/Cursor;
    iget-object v3, p0, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule$SearchHandler;->this$1:Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;

    iget-object v3, v3, Lcom/htc/android/worldclock/TimeZonePicker$SimpleSearchModule;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #getter for: Lcom/htc/android/worldclock/TimeZonePicker;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1000(Lcom/htc/android/worldclock/TimeZonePicker;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 580
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #searchPattern:Ljava/lang/String;
    .end local v2           #textString:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 591
    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
