.class Lcom/htc/CustomizationSetup/AsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/CustomizationSetup/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/CustomizationSetup/AsyncTask;


# direct methods
.method constructor <init>(Lcom/htc/CustomizationSetup/AsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask$3;,"Lcom/htc/CustomizationSetup/AsyncTask.3;"
    .local p2, x0:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lcom/htc/CustomizationSetup/AsyncTask$3;->this$0:Lcom/htc/CustomizationSetup/AsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 10

    .prologue
    .local p0, this:Lcom/htc/CustomizationSetup/AsyncTask$3;,"Lcom/htc/CustomizationSetup/AsyncTask.3;"
    const/4 v9, 0x1

    .line 195
    const/4 v2, 0x0

    .line 198
    .local v2, result:Ljava/lang/Object;,"TResult;"
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/AsyncTask$3;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 214
    .end local v2           #result:Ljava/lang/Object;,"TResult;"
    :goto_0
    invoke-static {}, Lcom/htc/CustomizationSetup/AsyncTask;->access$200()Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;

    move-result-object v4

    new-instance v5, Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;

    iget-object v6, p0, Lcom/htc/CustomizationSetup/AsyncTask$3;->this$0:Lcom/htc/CustomizationSetup/AsyncTask;

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-direct {v5, v6, v7}, Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;-><init>(Lcom/htc/CustomizationSetup/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v4, v9, v5}, Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 216
    .local v1, message:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 217
    :goto_1
    return-void

    .line 199
    .end local v1           #message:Landroid/os/Message;
    .restart local v2       #result:Ljava/lang/Object;,"TResult;"
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "AsyncTask"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 201
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 202
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 204
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 205
    .local v0, e:Ljava/util/concurrent/CancellationException;
    invoke-static {}, Lcom/htc/CustomizationSetup/AsyncTask;->access$200()Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;

    move-result-object v5

    const/4 v6, 0x3

    new-instance v7, Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;

    iget-object v8, p0, Lcom/htc/CustomizationSetup/AsyncTask$3;->this$0:Lcom/htc/CustomizationSetup/AsyncTask;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-direct {v7, v8, v4}, Lcom/htc/CustomizationSetup/AsyncTask$AsyncTaskResult;-><init>(Lcom/htc/CustomizationSetup/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/CustomizationSetup/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 207
    .restart local v1       #message:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 209
    .end local v0           #e:Ljava/util/concurrent/CancellationException;
    .end local v1           #message:Landroid/os/Message;
    :catch_3
    move-exception v3

    .line 210
    .local v3, t:Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "An error occured while executing doInBackground()"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
