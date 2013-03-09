.class public interface abstract Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;
.super Ljava/lang/Object;
.source "IterationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/IterationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskCallbackListener"
.end annotation


# virtual methods
.method public abstract onTaskCancel()V
.end method

.method public abstract onTaskEnd(Landroid/os/Bundle;)V
.end method

.method public abstract onTaskStart()V
.end method
