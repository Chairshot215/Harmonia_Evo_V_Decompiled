.class Lcom/htc/painting/engine/RequestHandler;
.super Landroid/os/Handler;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/RequestHandler$QuitRequest;
    }
.end annotation


# static fields
.field static final CLEAR_REQUEST:I = 0x1

.field static final DO_REQUEST:I = 0x0

.field static final QUIT_REQUEST_HANDLER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RequestHandler"


# instance fields
.field mRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/RequestHandler;->mRequest:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/RequestHandler;->mRequest:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearRequest()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/RequestHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/htc/painting/engine/RequestHandler;->mRequest:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/RequestHandler;->mRequest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/RequestHandler;->mRequest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v4, "RequestHandler"

    const-string v5, "do request begin"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/htc/painting/engine/RequestHandler;->mRequest:Ljava/util/List;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/htc/painting/engine/RequestHandler;->mRequest:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/htc/painting/engine/RequestHandler;->mRequest:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/htc/painting/engine/Request;

    move-object v3, v0

    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/htc/painting/engine/Request;->execute()V

    :cond_1
    const-string v4, "RequestHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "do request end, execution time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :pswitch_1
    const-string v4, "RequestHandler"

    const-string v5, "Clear all request"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/painting/engine/RequestHandler;->mRequest:Ljava/util/List;

    monitor-enter v5

    :try_start_2
    iget-object v4, p0, Lcom/htc/painting/engine/RequestHandler;->mRequest:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public postQuit()V
    .locals 1

    new-instance v0, Lcom/htc/painting/engine/RequestHandler$QuitRequest;

    invoke-direct {v0, p0, p0}, Lcom/htc/painting/engine/RequestHandler$QuitRequest;-><init>(Lcom/htc/painting/engine/RequestHandler;Landroid/os/Handler;)V

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/RequestHandler;->putRequest(Lcom/htc/painting/engine/Request;)V

    return-void
.end method

.method public putRequest(Lcom/htc/painting/engine/Request;)V
    .locals 3

    const-string v1, "RequestHandler"

    const-string v2, "add a request"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/painting/engine/RequestHandler;->mRequest:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/painting/engine/RequestHandler;->mRequest:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/painting/engine/RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/RequestHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
