.class public abstract Lcom/htc/sunny2/RenderThreadTask;
.super Ljava/lang/Object;
.source "RenderThreadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;
    }
.end annotation


# instance fields
.field alwaysNeedRenderAfterProcess:Z

.field alwaysRequestRenderThreadRunningAfterProcess:Z

.field private host:Ljava/lang/Object;

.field isInRenderThreadQueue:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadTask;->host:Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadTask;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadTask;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public GetHost()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadTask;->host:Ljava/lang/Object;

    return-object v0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadTask;->name:Ljava/lang/String;

    return-object v0
.end method

.method public free()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadTask;->host:Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadTask;->name:Ljava/lang/String;

    return-void
.end method

.method public abstract onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
.end method

.method public onRemovedIRT()V
    .locals 0

    return-void
.end method

.method public reset(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/RenderThreadTask;->host:Ljava/lang/Object;

    iput-object p2, p0, Lcom/htc/sunny2/RenderThreadTask;->name:Ljava/lang/String;

    return-void
.end method

.method public setAlwaysNeedRenderAfterProcess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    return-void
.end method

.method public setAlwaysRequestRenderThreadRunningAfterProcess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny2/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    return-void
.end method
