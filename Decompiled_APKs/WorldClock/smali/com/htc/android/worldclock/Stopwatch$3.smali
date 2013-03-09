.class Lcom/htc/android/worldclock/Stopwatch$3;
.super Ljava/util/TimerTask;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Stopwatch;->makeTask(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Stopwatch;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Stopwatch;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const-wide/16 v6, 0x64

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 412
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mLapState:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$300(Lcom/htc/android/worldclock/Stopwatch;)I

    move-result v1

    if-ne v1, v8, :cond_5

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mLapStart:J
    invoke-static {v1, v2, v3}, Lcom/htc/android/worldclock/Stopwatch;->access$402(Lcom/htc/android/worldclock/Stopwatch;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mStopBtnPressed:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$500(Lcom/htc/android/worldclock/Stopwatch;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$600(Lcom/htc/android/worldclock/Stopwatch;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 421
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #calls: Lcom/htc/android/worldclock/Stopwatch;->makeTask(J)V
    invoke-static {v1, v6, v7}, Lcom/htc/android/worldclock/Stopwatch;->access$700(Lcom/htc/android/worldclock/Stopwatch;J)V

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mState:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$800(Lcom/htc/android/worldclock/Stopwatch;)I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 424
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mLapState:I
    invoke-static {v1, v4}, Lcom/htc/android/worldclock/Stopwatch;->access$302(Lcom/htc/android/worldclock/Stopwatch;I)I

    .line 425
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$600(Lcom/htc/android/worldclock/Stopwatch;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mStopBtnPressed:Z
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$500(Lcom/htc/android/worldclock/Stopwatch;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$600(Lcom/htc/android/worldclock/Stopwatch;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 421
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #calls: Lcom/htc/android/worldclock/Stopwatch;->makeTask(J)V
    invoke-static {v1, v6, v7}, Lcom/htc/android/worldclock/Stopwatch;->access$700(Lcom/htc/android/worldclock/Stopwatch;J)V

    .line 423
    :cond_2
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mState:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$800(Lcom/htc/android/worldclock/Stopwatch;)I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 424
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mLapState:I
    invoke-static {v1, v4}, Lcom/htc/android/worldclock/Stopwatch;->access$302(Lcom/htc/android/worldclock/Stopwatch;I)I

    .line 425
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$600(Lcom/htc/android/worldclock/Stopwatch;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 419
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mStopBtnPressed:Z
    invoke-static {v2}, Lcom/htc/android/worldclock/Stopwatch;->access$500(Lcom/htc/android/worldclock/Stopwatch;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 420
    iget-object v2, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/htc/android/worldclock/Stopwatch;->access$600(Lcom/htc/android/worldclock/Stopwatch;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 421
    iget-object v2, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #calls: Lcom/htc/android/worldclock/Stopwatch;->makeTask(J)V
    invoke-static {v2, v6, v7}, Lcom/htc/android/worldclock/Stopwatch;->access$700(Lcom/htc/android/worldclock/Stopwatch;J)V

    .line 423
    :cond_3
    iget-object v2, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mState:I
    invoke-static {v2}, Lcom/htc/android/worldclock/Stopwatch;->access$800(Lcom/htc/android/worldclock/Stopwatch;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 424
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mLapState:I
    invoke-static {v1, v4}, Lcom/htc/android/worldclock/Stopwatch;->access$302(Lcom/htc/android/worldclock/Stopwatch;I)I

    .line 425
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$600(Lcom/htc/android/worldclock/Stopwatch;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 426
    :cond_4
    throw v1

    .line 431
    :cond_5
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/Stopwatch;->updateWatch()V

    .line 432
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/Stopwatch;->updateLapWatch()V

    .line 433
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mLapState:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$300(Lcom/htc/android/worldclock/Stopwatch;)I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 434
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$3;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mLapState:I
    invoke-static {v1, v4}, Lcom/htc/android/worldclock/Stopwatch;->access$302(Lcom/htc/android/worldclock/Stopwatch;I)I

    goto :goto_0
.end method
