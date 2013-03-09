.class final Ltwitter4j/examples/AsyncUpdate$1;
.super Ltwitter4j/TwitterAdapter;
.source "AsyncUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/examples/AsyncUpdate;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ltwitter4j/TwitterAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ltwitter4j/TwitterException;I)V
    .locals 2
    .parameter "e"
    .parameter "method"

    .prologue
    .line 65
    const/16 v0, 0x27

    if-ne p2, v0, :cond_0

    .line 66
    invoke-virtual {p1}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 67
    sget-object v0, Ltwitter4j/examples/AsyncUpdate;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Ltwitter4j/examples/AsyncUpdate;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 69
    monitor-exit v0

    .line 76
    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 71
    :cond_0
    sget-object v0, Ltwitter4j/examples/AsyncUpdate;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_1
    sget-object v1, Ltwitter4j/examples/AsyncUpdate;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 73
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should not happen"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 73
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public updated(Ltwitter4j/Status;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Successfully updated the status to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Status;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    sget-object v0, Ltwitter4j/examples/AsyncUpdate;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Ltwitter4j/examples/AsyncUpdate;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
