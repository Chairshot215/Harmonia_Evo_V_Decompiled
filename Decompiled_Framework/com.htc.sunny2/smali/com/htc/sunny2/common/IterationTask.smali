.class public abstract Lcom/htc/sunny2/common/IterationTask;
.super Ljava/lang/Object;
.source "IterationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;
    }
.end annotation


# instance fields
.field protected mBundle:Landroid/os/Bundle;

.field protected mIsFinished:Z

.field private mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationTask;->mIsFinished:Z

    return-void
.end method


# virtual methods
.method public isTaskFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/common/IterationTask;->mIsFinished:Z

    return v0
.end method

.method public abstract onCancel()V
.end method

.method public abstract onEnd()V
.end method

.method public abstract onIterate()Z
.end method

.method public abstract onSetup()V
.end method

.method public onTaskCancel()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/common/IterationTask;->onCancel()V

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    invoke-interface {v0}, Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;->onTaskCancel()V

    :cond_0
    return-void
.end method

.method public onTaskEnd()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/sunny2/common/IterationTask;->onEnd()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationTask;->mIsFinished:Z

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    iget-object v1, p0, Lcom/htc/sunny2/common/IterationTask;->mBundle:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;->onTaskEnd(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onTaskIterate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/common/IterationTask;->onIterate()Z

    move-result v0

    return v0
.end method

.method public onTaskSetup()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationTask;->mIsFinished:Z

    invoke-virtual {p0}, Lcom/htc/sunny2/common/IterationTask;->onSetup()V

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    invoke-interface {v0}, Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;->onTaskStart()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationTask;->mIsFinished:Z

    return-void
.end method

.method public setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    return-void
.end method
