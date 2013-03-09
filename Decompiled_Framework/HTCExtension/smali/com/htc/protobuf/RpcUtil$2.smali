.class final Lcom/htc/protobuf/RpcUtil$2;
.super Ljava/lang/Object;
.source "RpcUtil.java"

# interfaces
.implements Lcom/htc/protobuf/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/protobuf/RpcUtil;->newOneTimeCallback(Lcom/htc/protobuf/RpcCallback;)Lcom/htc/protobuf/RpcCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/protobuf/RpcCallback",
        "<TParameterType;>;"
    }
.end annotation


# instance fields
.field private alreadyCalled:Z

.field final synthetic val$originalCallback:Lcom/htc/protobuf/RpcCallback;


# direct methods
.method constructor <init>(Lcom/htc/protobuf/RpcCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/protobuf/RpcUtil$2;->val$originalCallback:Lcom/htc/protobuf/RpcCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/protobuf/RpcUtil$2;->alreadyCalled:Z

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParameterType;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/protobuf/RpcUtil$2;->alreadyCalled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/protobuf/RpcUtil$AlreadyCalledException;

    invoke-direct {v0}, Lcom/htc/protobuf/RpcUtil$AlreadyCalledException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/htc/protobuf/RpcUtil$2;->alreadyCalled:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/htc/protobuf/RpcUtil$2;->val$originalCallback:Lcom/htc/protobuf/RpcCallback;

    invoke-interface {v0, p1}, Lcom/htc/protobuf/RpcCallback;->run(Ljava/lang/Object;)V

    return-void
.end method
