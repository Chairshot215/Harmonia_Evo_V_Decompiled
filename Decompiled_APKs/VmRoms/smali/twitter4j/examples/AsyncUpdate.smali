.class public Ltwitter4j/examples/AsyncUpdate;
.super Ljava/lang/Object;
.source "AsyncUpdate.java"


# static fields
.field static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltwitter4j/examples/AsyncUpdate;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 49
    array-length v1, p0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 50
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Usage: java twitter4j.examples.AsyncUpdate ID Password text"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 54
    :cond_0
    new-instance v0, Ltwitter4j/AsyncTwitter;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-direct {v0, v1, v2}, Ltwitter4j/AsyncTwitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v0, twitter:Ltwitter4j/AsyncTwitter;
    const/4 v1, 0x2

    aget-object v1, p0, v1

    new-instance v2, Ltwitter4j/examples/AsyncUpdate$1;

    invoke-direct {v2}, Ltwitter4j/examples/AsyncUpdate$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Ltwitter4j/AsyncTwitter;->updateStatusAsync(Ljava/lang/String;Ltwitter4j/TwitterListener;)V

    .line 79
    sget-object v1, Ltwitter4j/examples/AsyncUpdate;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v2, Ltwitter4j/examples/AsyncUpdate;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 81
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
