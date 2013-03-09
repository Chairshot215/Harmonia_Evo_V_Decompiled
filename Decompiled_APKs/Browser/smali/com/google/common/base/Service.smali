.class public interface abstract Lcom/google/common/base/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Service$State;
    }
.end annotation


# virtual methods
.method public abstract isRunning()Z
.end method

.method public abstract start()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/common/base/Service$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract startAndWait()Lcom/google/common/base/Service$State;
.end method

.method public abstract state()Lcom/google/common/base/Service$State;
.end method

.method public abstract stop()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/common/base/Service$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract stopAndWait()Lcom/google/common/base/Service$State;
.end method
