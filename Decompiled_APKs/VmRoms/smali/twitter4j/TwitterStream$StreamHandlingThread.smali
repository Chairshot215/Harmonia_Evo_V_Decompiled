.class abstract Ltwitter4j/TwitterStream$StreamHandlingThread;
.super Ljava/lang/Thread;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/TwitterStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "StreamHandlingThread"
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "Twitter Stream Handling Thread"


# instance fields
.field args:[Ljava/lang/Object;

.field private closed:Z

.field private retryHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field stream:Ltwitter4j/StatusStream;

.field private final this$0:Ltwitter4j/TwitterStream;


# direct methods
.method constructor <init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter "args"

    .prologue
    .line 477
    iput-object p1, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->this$0:Ltwitter4j/TwitterStream;

    .line 478
    const-string v0, "Twitter Stream Handling Thread[initializing]"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->stream:Ltwitter4j/StatusStream;

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->closed:Z

    .line 479
    iput-object p2, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->args:[Ljava/lang/Object;

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ltwitter4j/TwitterStream;->access$000(Ltwitter4j/TwitterStream;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->retryHistory:Ljava/util/List;

    .line 481
    return-void
.end method

.method private setStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 540
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Twitter Stream Handling Thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, actualMessage:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ltwitter4j/TwitterStream$StreamHandlingThread;->setName(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v1, v0}, Ltwitter4j/TwitterStream;->access$300(Ltwitter4j/TwitterStream;Ljava/lang/String;)V

    .line 543
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    const-string v0, "[disposing thread]"

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream$StreamHandlingThread;->setStatus(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->stream:Ltwitter4j/StatusStream;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->stream:Ltwitter4j/StatusStream;

    invoke-virtual {v0}, Ltwitter4j/StatusStream;->close()V

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :cond_0
    monitor-exit p0

    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method abstract getStream()Ltwitter4j/StatusStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public run()V
    .locals 11

    .prologue
    const-wide/32 v9, 0xea60

    .line 485
    :cond_0
    :goto_0
    iget-boolean v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->closed:Z

    if-nez v4, :cond_6

    .line 488
    :try_start_0
    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->retryHistory:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->retryHistory:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v4, v5, v7

    cmp-long v4, v4, v9

    if-lez v4, :cond_1

    .line 490
    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->retryHistory:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 493
    :cond_1
    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->retryHistory:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v5}, Ltwitter4j/TwitterStream;->access$000(Ltwitter4j/TwitterStream;)I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 495
    const-string v4, "[establishing connection]"

    invoke-direct {p0, v4}, Ltwitter4j/TwitterStream$StreamHandlingThread;->setStatus(Ljava/lang/String;)V

    .line 497
    :cond_2
    :goto_1
    iget-boolean v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->closed:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->stream:Ltwitter4j/StatusStream;

    if-nez v4, :cond_4

    .line 498
    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->retryHistory:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v5}, Ltwitter4j/TwitterStream;->access$000(Ltwitter4j/TwitterStream;)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 499
    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->retryHistory:Ljava/util/List;

    new-instance v5, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {p0}, Ltwitter4j/TwitterStream$StreamHandlingThread;->getStream()Ltwitter4j/StatusStream;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->stream:Ltwitter4j/StatusStream;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 523
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 524
    .local v1, te:Ltwitter4j/TwitterException;
    const/4 v4, 0x0

    iput-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->stream:Ltwitter4j/StatusStream;

    .line 525
    invoke-virtual {v1}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 526
    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->this$0:Ltwitter4j/TwitterStream;

    invoke-virtual {v1}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ltwitter4j/TwitterStream;->access$300(Ltwitter4j/TwitterStream;Ljava/lang/String;)V

    .line 527
    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v4}, Ltwitter4j/TwitterStream;->access$200(Ltwitter4j/TwitterStream;)Ltwitter4j/StatusListener;

    move-result-object v4

    invoke-interface {v4, v1}, Ltwitter4j/StatusListener;->onException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 505
    .end local v1           #te:Ltwitter4j/TwitterException;
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->retryHistory:Ljava/util/List;

    iget-object v7, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->retryHistory:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v4, v5, v7

    sub-long v2, v9, v4

    .line 506
    .local v2, timeToSleep:J
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "[retry limit reached. sleeping for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v2, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " secs]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ltwitter4j/TwitterStream$StreamHandlingThread;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Ltwitter4j/TwitterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 508
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ltwitter4j/TwitterException; {:try_start_2 .. :try_end_2} :catch_0

    .line 513
    .end local v2           #timeToSleep:J
    :cond_4
    :goto_2
    :try_start_3
    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->stream:Ltwitter4j/StatusStream;

    if-eqz v4, :cond_0

    .line 515
    const-string v4, "[receiving stream]"

    invoke-direct {p0, v4}, Ltwitter4j/TwitterStream$StreamHandlingThread;->setStatus(Ljava/lang/String;)V

    .line 516
    :cond_5
    :goto_3
    iget-boolean v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->closed:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->stream:Ltwitter4j/StatusStream;

    invoke-virtual {v4}, Ltwitter4j/StatusStream;->next()Ltwitter4j/Status;

    move-result-object v0

    .local v0, status:Ltwitter4j/Status;
    if-eqz v0, :cond_0

    .line 517
    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->this$0:Ltwitter4j/TwitterStream;

    const-string v5, "received:"

    invoke-virtual {v0}, Ltwitter4j/Status;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ltwitter4j/TwitterStream;->access$100(Ltwitter4j/TwitterStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v4}, Ltwitter4j/TwitterStream;->access$200(Ltwitter4j/TwitterStream;)Ltwitter4j/StatusListener;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 519
    iget-object v4, p0, Ltwitter4j/TwitterStream$StreamHandlingThread;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v4}, Ltwitter4j/TwitterStream;->access$200(Ltwitter4j/TwitterStream;)Ltwitter4j/StatusListener;

    move-result-object v4

    invoke-interface {v4, v0}, Ltwitter4j/StatusListener;->onStatus(Ltwitter4j/Status;)V
    :try_end_3
    .catch Ltwitter4j/TwitterException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 509
    .end local v0           #status:Ltwitter4j/Status;
    .restart local v2       #timeToSleep:J
    :catch_1
    move-exception v4

    goto :goto_2

    .line 530
    .end local v2           #timeToSleep:J
    :cond_6
    return-void
.end method
