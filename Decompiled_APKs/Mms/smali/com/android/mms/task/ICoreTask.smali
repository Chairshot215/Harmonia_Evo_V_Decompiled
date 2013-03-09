.class public interface abstract Lcom/android/mms/task/ICoreTask;
.super Ljava/lang/Object;
.source "ICoreTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getError()I
.end method

.method public abstract getProgressPercentage()F
.end method

.method public varargs abstract init([Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation
.end method

.method public abstract isFinished()Z
.end method

.method public abstract isPauseable()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setCallback(Lcom/android/mms/task/ICoreTaskCallback;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
