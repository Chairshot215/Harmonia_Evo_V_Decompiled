.class public Ltwitter4j/TwitterStream;
.super Ltwitter4j/TwitterSupport;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/TwitterStream$StreamHandlingThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

.field private retryPerMinutes:I

.field private statusListener:Ltwitter4j/StatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Ltwitter4j/Configuration;->getDebug()Z

    move-result v0

    sput-boolean v0, Ltwitter4j/TwitterStream;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ltwitter4j/TwitterSupport;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Ltwitter4j/TwitterStream;->retryPerMinutes:I

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "userId"
    .parameter "password"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterSupport;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Ltwitter4j/TwitterStream;->retryPerMinutes:I

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/StatusListener;)V
    .locals 1
    .parameter "userId"
    .parameter "password"
    .parameter "listener"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterSupport;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Ltwitter4j/TwitterStream;->retryPerMinutes:I

    .line 62
    iput-object p3, p0, Ltwitter4j/TwitterStream;->statusListener:Ltwitter4j/StatusListener;

    .line 63
    return-void
.end method

.method static access$000(Ltwitter4j/TwitterStream;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Ltwitter4j/TwitterStream;->retryPerMinutes:I

    return v0
.end method

.method static access$100(Ltwitter4j/TwitterStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterStream;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static access$200(Ltwitter4j/TwitterStream;)Ltwitter4j/StatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Ltwitter4j/TwitterStream;->statusListener:Ltwitter4j/StatusListener;

    return-object v0
.end method

.method static access$300(Ltwitter4j/TwitterStream;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ltwitter4j/TwitterStream;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Ltwitter4j/TwitterStream;->USE_SSL:Z

    if-eqz v0, :cond_0

    const-string v0, "https://stream.twitter.com/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://stream.twitter.com/"

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 554
    sget-boolean v0, Ltwitter4j/TwitterStream;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 555
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 557
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 560
    sget-boolean v0, Ltwitter4j/TwitterStream;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->log(Ljava/lang/String;)V

    .line 563
    :cond_0
    return-void
.end method

.method private declared-synchronized startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V
    .locals 2
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->cleanup()V

    .line 446
    iget-object v0, p0, Ltwitter4j/TwitterStream;->statusListener:Ltwitter4j/StatusListener;

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StatusListener is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 449
    :cond_0
    :try_start_1
    iput-object p1, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

    .line 450
    iget-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

    invoke-virtual {v0}, Ltwitter4j/TwitterStream$StreamHandlingThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    monitor-exit p0

    return-void
.end method

.method private toFollowString([I)Ljava/lang/String;
    .locals 6
    .parameter "follows"

    .prologue
    .line 389
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v5, p1

    mul-int/lit8 v5, v5, 0xb

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 390
    .local v1, buf:Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v2, v0, v3

    .line 391
    .local v2, follow:I
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 392
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 390
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 396
    .end local v2           #follow:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private toTrackString([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "keywords"

    .prologue
    .line 434
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v5, p1

    mul-int/lit8 v5, v5, 0x14

    mul-int/lit8 v5, v5, 0x4

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 435
    .local v1, buf:Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 436
    .local v3, keyword:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 437
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    .end local v3           #keyword:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public birddog(I[I)V
    .locals 4
    .parameter "count"
    .parameter "follow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Ltwitter4j/TwitterStream$7;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {v0, p0, v1}, Ltwitter4j/TwitterStream$7;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 302
    return-void
.end method

.method public declared-synchronized cleanup()V
    .locals 1

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 456
    :try_start_1
    iget-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$StreamHandlingThread;

    invoke-virtual {v0}, Ltwitter4j/TwitterStream$StreamHandlingThread;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 460
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 457
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public filter(I[I[Ljava/lang/String;)V
    .locals 4
    .parameter "count"
    .parameter "follow"
    .parameter "track"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ltwitter4j/TwitterStream$4;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {v0, p0, v1}, Ltwitter4j/TwitterStream$4;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 191
    return-void
.end method

.method public firehose(I)V
    .locals 4
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ltwitter4j/TwitterStream$1;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Ltwitter4j/TwitterStream$1;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 81
    return-void
.end method

.method public follow([I)V
    .locals 3
    .parameter "follow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Ltwitter4j/TwitterStream$9;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, p0, v1}, Ltwitter4j/TwitterStream$9;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 371
    return-void
.end method

.method public forceUsePost(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->forceUsePost(Z)V

    return-void
.end method

.method public gardenhose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Ltwitter4j/TwitterStream$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltwitter4j/TwitterStream$5;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 238
    return-void
.end method

.method public getBirddogStream(I[I)Ltwitter4j/StatusStream;
    .locals 1
    .parameter "count"
    .parameter "follow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/TwitterStream;->getFilterStream(I[I[Ljava/lang/String;)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method

.method public getClientURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/TwitterSupport;->getClientURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/TwitterSupport;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterStream(I[I[Ljava/lang/String;)Ltwitter4j/StatusStream;
    .locals 6
    .parameter "count"
    .parameter "follow"
    .parameter "track"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v1, postparams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    new-instance v2, Ltwitter4j/http/PostParameter;

    const-string v3, "count"

    invoke-direct {v2, v3, p1}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    .line 208
    new-instance v2, Ltwitter4j/http/PostParameter;

    const-string v3, "follow"

    invoke-direct {p0, p2}, Ltwitter4j/TwitterStream;->toFollowString([I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    if-eqz p3, :cond_1

    array-length v2, p3

    if-lez v2, :cond_1

    .line 212
    new-instance v2, Ltwitter4j/http/PostParameter;

    const-string v3, "track"

    invoke-direct {p0, p3}, Ltwitter4j/TwitterStream;->toTrackString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_1
    :try_start_0
    new-instance v2, Ltwitter4j/StatusStream;

    iget-object v3, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/http/HttpClient;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0}, Ltwitter4j/TwitterStream;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "1/statuses/filter.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ltwitter4j/http/PostParameter;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ltwitter4j/http/PostParameter;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/StatusStream;-><init>(Ltwitter4j/http/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 218
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 219
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getFirehoseStream(I)Ltwitter4j/StatusStream;
    .locals 9
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    new-instance v1, Ltwitter4j/StatusStream;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/http/HttpClient;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0}, Ltwitter4j/TwitterStream;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "1/statuses/firehose.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ltwitter4j/http/PostParameter;

    const/4 v5, 0x0

    new-instance v6, Ltwitter4j/http/PostParameter;

    const-string v7, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/StatusStream;-><init>(Ltwitter4j/http/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 99
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 100
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getFollowStream([I)Ltwitter4j/StatusStream;
    .locals 2
    .parameter "follow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 385
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Ltwitter4j/TwitterStream;->getFilterStream(I[I[Ljava/lang/String;)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method

.method public getGardenhoseStream()Ltwitter4j/StatusStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->getSampleStream()Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/TwitterSupport;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetStream()Ltwitter4j/StatusStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    new-instance v1, Ltwitter4j/StatusStream;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/http/HttpClient;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0}, Ltwitter4j/TwitterStream;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "1/statuses/retweet.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ltwitter4j/http/PostParameter;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ltwitter4j/http/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/http/PostParameter;Z)Ltwitter4j/http/Response;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/StatusStream;-><init>(Ltwitter4j/http/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 134
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 135
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getSampleStream()Ltwitter4j/StatusStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 166
    :try_start_0
    new-instance v1, Ltwitter4j/StatusStream;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/http/HttpClient;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0}, Ltwitter4j/TwitterStream;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "1/statuses/sample.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ltwitter4j/http/HttpClient;->get(Ljava/lang/String;Z)Ltwitter4j/http/Response;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/StatusStream;-><init>(Ltwitter4j/http/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 168
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 169
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getShadowStream(I[I)Ltwitter4j/StatusStream;
    .locals 1
    .parameter "count"
    .parameter "follow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/TwitterStream;->getFilterStream(I[I[Ljava/lang/String;)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/TwitterSupport;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpritzerStream()Ltwitter4j/StatusStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->getSampleStream()Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method

.method public getStatusListener()Ltwitter4j/StatusListener;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Ltwitter4j/TwitterStream;->statusListener:Ltwitter4j/StatusListener;

    return-object v0
.end method

.method public getTrackStream([Ljava/lang/String;)Ltwitter4j/StatusStream;
    .locals 2
    .parameter "keywords"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 429
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ltwitter4j/TwitterStream;->getFilterStream(I[I[Ljava/lang/String;)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/TwitterSupport;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/TwitterSupport;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUsePostForced()Z
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ltwitter4j/TwitterSupport;->isUsePostForced()Z

    move-result v0

    return v0
.end method

.method public retweet()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ltwitter4j/TwitterStream$2;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Ltwitter4j/TwitterStream$2;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 118
    return-void
.end method

.method public sample()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ltwitter4j/TwitterStream$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltwitter4j/TwitterStream$3;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 153
    return-void
.end method

.method public setClientURL(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setClientURL(Ljava/lang/String;)V

    return-void
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setClientVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setHttpConnectionTimeout(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setHttpConnectionTimeout(I)V

    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Ltwitter4j/TwitterSupport;->setHttpProxy(Ljava/lang/String;I)V

    return-void
.end method

.method public setHttpProxyAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Ltwitter4j/TwitterSupport;->setHttpProxyAuth(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHttpReadTimeout(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setHttpReadTimeout(I)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Ltwitter4j/TwitterSupport;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setRetryCount(I)V

    return-void
.end method

.method public setRetryIntervalSecs(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setRetryIntervalSecs(I)V

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setSource(Ljava/lang/String;)V

    return-void
.end method

.method public setStatusListener(Ltwitter4j/StatusListener;)V
    .locals 0
    .parameter "statusListener"

    .prologue
    .line 467
    iput-object p1, p0, Ltwitter4j/TwitterStream;->statusListener:Ltwitter4j/StatusListener;

    .line 468
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Ltwitter4j/TwitterSupport;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public shadow(I[I)V
    .locals 4
    .parameter "count"
    .parameter "follow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Ltwitter4j/TwitterStream$8;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {v0, p0, v1}, Ltwitter4j/TwitterStream$8;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 337
    return-void
.end method

.method public spritzer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ltwitter4j/TwitterStream$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltwitter4j/TwitterStream$6;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 269
    return-void
.end method

.method public track([Ljava/lang/String;)V
    .locals 2
    .parameter "keywords"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v0, Ltwitter4j/TwitterStream$10;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Ltwitter4j/TwitterStream$10;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$StreamHandlingThread;)V

    .line 423
    return-void
.end method
