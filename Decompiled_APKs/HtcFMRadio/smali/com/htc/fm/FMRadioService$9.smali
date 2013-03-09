.class Lcom/htc/fm/FMRadioService$9;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadioService;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1873
    iput-object p1, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-wide/16 v2, 0x1f4

    .line 1877
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1935
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1936
    return-void

    .line 1880
    :pswitch_0
    const-string v0, "FMRadioService"

    const-string v1, "[mFMConcurrenceMsgHandler] CONCURRENCE_TX_TURNON"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadioService$9;->removeMessages(I)V

    .line 1882
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1884
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1885
    :goto_1
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    iget-object v1, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mTxRequestFreq:I
    invoke-static {v1}, Lcom/htc/fm/FMRadioService;->access$2400(Lcom/htc/fm/FMRadioService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMRadioService;->turnOnTx(I)V

    goto :goto_0

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    iget-object v0, v0, Lcom/htc/fm/FMRadioService;->mFMConcurrenceMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1892
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadioService$9;->removeMessages(I)V

    .line 1893
    const-string v0, "FMRadioService"

    const-string v1, "[mFMConcurrenceMsgHandler] CONCURRENCE_TX_TURNOFF"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getTxCmdState()I

    move-result v0

    if-nez v0, :cond_1

    .line 1895
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->turnOffTx()V

    goto :goto_0

    .line 1897
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    iget-object v0, v0, Lcom/htc/fm/FMRadioService;->mFMConcurrenceMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1902
    :pswitch_2
    const-string v0, "FMRadioService"

    const-string v1, "[mFMConcurrenceMsgHandler] CONCURRENCE_TX_ENABLE"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadioService$9;->removeMessages(I)V

    .line 1904
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getState()I

    move-result v0

    if-nez v0, :cond_2

    .line 1906
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1907
    :goto_2
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->enableTx()V

    goto :goto_0

    .line 1910
    :cond_2
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    iget-object v0, v0, Lcom/htc/fm/FMRadioService;->mFMConcurrenceMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1915
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadioService$9;->removeMessages(I)V

    .line 1916
    const-string v0, "FMRadioService"

    const-string v1, "[mFMConcurrenceMsgHandler] CONCURRENCE_RX_TURNON"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getTxState()I

    move-result v0

    if-nez v0, :cond_3

    .line 1919
    const-wide/16 v0, 0x3e8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1920
    :goto_3
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    iget-object v1, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mRxRequestFreq:I
    invoke-static {v1}, Lcom/htc/fm/FMRadioService;->access$2500(Lcom/htc/fm/FMRadioService;)I

    move-result v1

    #calls: Lcom/htc/fm/FMRadioService;->turnOn(I)V
    invoke-static {v0, v1}, Lcom/htc/fm/FMRadioService;->access$2000(Lcom/htc/fm/FMRadioService;I)V

    goto/16 :goto_0

    .line 1923
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    iget-object v0, v0, Lcom/htc/fm/FMRadioService;->mFMConcurrenceMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1927
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRadioService$9;->removeMessages(I)V

    .line 1928
    const-string v0, "FMRadioService"

    const-string v1, "[mFMConcurrenceMsgHandler] CONCURRENCE_RX_TURNOFF"

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->getCmdState()I

    move-result v0

    if-nez v0, :cond_4

    .line 1930
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->turnOff()V

    goto/16 :goto_0

    .line 1932
    :cond_4
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$9;->this$0:Lcom/htc/fm/FMRadioService;

    iget-object v0, v0, Lcom/htc/fm/FMRadioService;->mFMConcurrenceMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1884
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 1906
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1919
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1877
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
