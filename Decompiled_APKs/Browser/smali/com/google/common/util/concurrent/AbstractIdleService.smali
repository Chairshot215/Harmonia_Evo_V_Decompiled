.class public abstract Lcom/google/common/util/concurrent/AbstractIdleService;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Lcom/google/common/base/Service;


# instance fields
.field private final delegate:Lcom/google/common/base/Service;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/common/util/concurrent/AbstractIdleService$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractIdleService$1;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->delegate:Lcom/google/common/base/Service;

    return-void
.end method


# virtual methods
.method protected executor(Lcom/google/common/base/Service$State;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter "state"

    .prologue
    .line 87
    new-instance v0, Lcom/google/common/util/concurrent/AbstractIdleService$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractIdleService$2;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService;Lcom/google/common/base/Service$State;)V

    return-object v0
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->delegate:Lcom/google/common/base/Service;

    invoke-interface {v0}, Lcom/google/common/base/Service;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected abstract shutDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final start()Ljava/util/concurrent/Future;
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
    .line 102
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->delegate:Lcom/google/common/base/Service;

    invoke-interface {v0}, Lcom/google/common/base/Service;->start()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final startAndWait()Lcom/google/common/base/Service$State;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->delegate:Lcom/google/common/base/Service;

    invoke-interface {v0}, Lcom/google/common/base/Service;->startAndWait()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method protected abstract startUp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final state()Lcom/google/common/base/Service$State;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->delegate:Lcom/google/common/base/Service;

    invoke-interface {v0}, Lcom/google/common/base/Service;->state()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final stop()Ljava/util/concurrent/Future;
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
    .line 118
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->delegate:Lcom/google/common/base/Service;

    invoke-interface {v0}, Lcom/google/common/base/Service;->stop()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final stopAndWait()Lcom/google/common/base/Service$State;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->delegate:Lcom/google/common/base/Service;

    invoke-interface {v0}, Lcom/google/common/base/Service;->stopAndWait()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
