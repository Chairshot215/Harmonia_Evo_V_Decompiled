.class Lcom/htc/fm/FreqRollBar$1;
.super Landroid/os/Handler;
.source "FreqRollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FreqRollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FreqRollBar;


# direct methods
.method constructor <init>(Lcom/htc/fm/FreqRollBar;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/htc/fm/FreqRollBar$1;->this$0:Lcom/htc/fm/FreqRollBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0x64

    const/16 v5, 0x1f

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 599
    const-string v0, "FMRadio_FreqRollBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mActionHandler] HandleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 622
    :goto_0
    return-void

    .line 602
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar$1;->this$0:Lcom/htc/fm/FreqRollBar;

    #getter for: Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/FreqRollBar;->access$100(Lcom/htc/fm/FreqRollBar;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {p0, v3}, Lcom/htc/fm/FreqRollBar$1;->removeMessages(I)V

    .line 604
    invoke-virtual {p0, v3, v6, v7}, Lcom/htc/fm/FreqRollBar$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 607
    :cond_0
    const-string v0, "FMRadio_FreqRollBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActionHandler [setFreq1]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/FreqRollBar$1;->this$0:Lcom/htc/fm/FreqRollBar;

    #getter for: Lcom/htc/fm/FreqRollBar;->handlerfreq:I
    invoke-static {v2}, Lcom/htc/fm/FreqRollBar;->access$200(Lcom/htc/fm/FreqRollBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar$1;->this$0:Lcom/htc/fm/FreqRollBar;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar$1;->this$0:Lcom/htc/fm/FreqRollBar;

    #getter for: Lcom/htc/fm/FreqRollBar;->handlerfreq:I
    invoke-static {v1}, Lcom/htc/fm/FreqRollBar;->access$200(Lcom/htc/fm/FreqRollBar;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/fm/FreqRollBar$1;->this$0:Lcom/htc/fm/FreqRollBar;

    #getter for: Lcom/htc/fm/FreqRollBar;->handleranimation:Z
    invoke-static {v2}, Lcom/htc/fm/FreqRollBar;->access$300(Lcom/htc/fm/FreqRollBar;)Z

    move-result v2

    #calls: Lcom/htc/fm/FreqRollBar;->setFreqInternal(IZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/fm/FreqRollBar;->access$400(Lcom/htc/fm/FreqRollBar;IZ)V

    goto :goto_0

    .line 612
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar$1;->this$0:Lcom/htc/fm/FreqRollBar;

    #getter for: Lcom/htc/fm/FreqRollBar;->containershandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/FreqRollBar;->access$100(Lcom/htc/fm/FreqRollBar;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {p0, v4}, Lcom/htc/fm/FreqRollBar$1;->removeMessages(I)V

    .line 614
    invoke-virtual {p0, v4, v6, v7}, Lcom/htc/fm/FreqRollBar$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 617
    :cond_1
    const-string v0, "FMRadio_FreqRollBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActionHandler [setFreqbySeek1]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fm/FreqRollBar$1;->this$0:Lcom/htc/fm/FreqRollBar;

    #getter for: Lcom/htc/fm/FreqRollBar;->handlerfreq:I
    invoke-static {v2}, Lcom/htc/fm/FreqRollBar;->access$200(Lcom/htc/fm/FreqRollBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/htc/fm/FreqRollBar$1;->this$0:Lcom/htc/fm/FreqRollBar;

    iget-object v1, p0, Lcom/htc/fm/FreqRollBar$1;->this$0:Lcom/htc/fm/FreqRollBar;

    #getter for: Lcom/htc/fm/FreqRollBar;->handlerfreq:I
    invoke-static {v1}, Lcom/htc/fm/FreqRollBar;->access$200(Lcom/htc/fm/FreqRollBar;)I

    move-result v1

    #calls: Lcom/htc/fm/FreqRollBar;->setFreqbySeekInternal(I)V
    invoke-static {v0, v1}, Lcom/htc/fm/FreqRollBar;->access$500(Lcom/htc/fm/FreqRollBar;I)V

    goto :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
