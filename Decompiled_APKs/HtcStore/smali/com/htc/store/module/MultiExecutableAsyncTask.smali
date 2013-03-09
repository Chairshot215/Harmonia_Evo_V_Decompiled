.class public abstract Lcom/htc/store/module/MultiExecutableAsyncTask;
.super Ljava/lang/Object;
.source "MultiExecutableAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/module/MultiExecutableAsyncTask$1;,
        Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected volatile mIsIdle:Z

.field private mRealAsyncTask:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/store/module/MultiExecutableAsyncTask",
            "<TParams;TProgress;TResult;>.RealAsyncTask;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/htc/store/module/MultiExecutableAsyncTask;)Lcom/htc/store/module/MultiExecutableAsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/htc/store/module/MultiExecutableAsyncTask;->getMultiExecutableAsyncTask()Lcom/htc/store/module/MultiExecutableAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private getMultiExecutableAsyncTask()Lcom/htc/store/module/MultiExecutableAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/store/module/MultiExecutableAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>;"
    return-object p0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 46
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/htc/store/module/MultiExecutableAsyncTask;->mRealAsyncTask:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/htc/store/module/MultiExecutableAsyncTask;->mRealAsyncTask:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;

    invoke-virtual {v0, p1}, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;->cancel(Z)Z

    .line 49
    :cond_0
    return-void
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)V
    .locals 4
    .parameter "executor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>;"
    .local p2, params:[Ljava/lang/Object;,"[TParams;"
    const/4 v3, 0x0

    .line 17
    const/4 v0, 0x1

    .line 18
    .local v0, doExecute:Z
    iget-object v2, p0, Lcom/htc/store/module/MultiExecutableAsyncTask;->mRealAsyncTask:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;

    if-nez v2, :cond_2

    .line 19
    new-instance v2, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;

    invoke-direct {v2, p0, v3}, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;-><init>(Lcom/htc/store/module/MultiExecutableAsyncTask;Lcom/htc/store/module/MultiExecutableAsyncTask$1;)V

    iput-object v2, p0, Lcom/htc/store/module/MultiExecutableAsyncTask;->mRealAsyncTask:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;

    .line 28
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 29
    iget-object v2, p0, Lcom/htc/store/module/MultiExecutableAsyncTask;->mRealAsyncTask:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;

    invoke-virtual {v2, p1, p2}, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 31
    :cond_1
    return-void

    .line 21
    :cond_2
    iget-object v2, p0, Lcom/htc/store/module/MultiExecutableAsyncTask;->mRealAsyncTask:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;

    invoke-virtual {v2}, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    .line 22
    .local v1, status:Landroid/os/AsyncTask$Status;
    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_3

    .line 23
    const/4 v0, 0x0

    goto :goto_0

    .line 24
    :cond_3
    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    .line 25
    new-instance v2, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;

    invoke-direct {v2, p0, v3}, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;-><init>(Lcom/htc/store/module/MultiExecutableAsyncTask;Lcom/htc/store/module/MultiExecutableAsyncTask$1;)V

    iput-object v2, p0, Lcom/htc/store/module/MultiExecutableAsyncTask;->mRealAsyncTask:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 38
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>;"
    const/4 v0, 0x1

    .line 39
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/store/module/MultiExecutableAsyncTask;->mRealAsyncTask:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/htc/store/module/MultiExecutableAsyncTask;->mRealAsyncTask:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;

    invoke-virtual {v1}, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;->isCancelled()Z

    move-result v0

    .line 42
    :cond_0
    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>;"
    iget-boolean v0, p0, Lcom/htc/store/module/MultiExecutableAsyncTask;->mIsIdle:Z

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, values:[Ljava/lang/Object;,"[TProgress;"
    return-void
.end method

.method protected varargs publishProgress([Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lcom/htc/store/module/MultiExecutableAsyncTask;,"Lcom/htc/store/module/MultiExecutableAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, values:[Ljava/lang/Object;,"[TProgress;"
    iget-object v0, p0, Lcom/htc/store/module/MultiExecutableAsyncTask;->mRealAsyncTask:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/htc/store/module/MultiExecutableAsyncTask;->mRealAsyncTask:Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;

    invoke-virtual {v0, p1}, Lcom/htc/store/module/MultiExecutableAsyncTask$RealAsyncTask;->realPublishProgress([Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method
