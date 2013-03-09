.class public abstract Lcom/google/common/util/concurrent/ForwardingService;
.super Lcom/google/common/collect/ForwardingObject;
.source "ForwardingService.java"

# interfaces
.implements Lcom/google/common/base/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delegate()Lcom/google/common/base/Service;
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingService;->delegate()Lcom/google/common/base/Service;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingService;->delegate()Lcom/google/common/base/Service;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/Service;->isRunning()Z

    move-result v0

    return v0
.end method

.method public start()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/common/base/Service$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingService;->delegate()Lcom/google/common/base/Service;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/Service;->start()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public startAndWait()Lcom/google/common/base/Service$State;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingService;->delegate()Lcom/google/common/base/Service;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/Service;->startAndWait()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public state()Lcom/google/common/base/Service$State;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingService;->delegate()Lcom/google/common/base/Service;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/Service;->state()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public stop()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/common/base/Service$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingService;->delegate()Lcom/google/common/base/Service;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/Service;->stop()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public stopAndWait()Lcom/google/common/base/Service$State;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingService;->delegate()Lcom/google/common/base/Service;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/Service;->stopAndWait()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method
