.class public final Lcom/htc/protobuf/RpcUtil;
.super Ljava/lang/Object;
.source "RpcUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/RpcUtil$AlreadyCalledException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/protobuf/Message;Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/htc/protobuf/RpcUtil;->copyAsType(Lcom/htc/protobuf/Message;Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method private static copyAsType(Lcom/htc/protobuf/Message;Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message;
    .locals 1
    .parameter
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/htc/protobuf/Message;",
            ">(TType;",
            "Lcom/htc/protobuf/Message;",
            ")TType;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, typeDefaultInstance:Lcom/htc/protobuf/Message;,"TType;"
    invoke-interface {p0}, Lcom/htc/protobuf/Message;->newBuilderForType()Lcom/htc/protobuf/Message$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/protobuf/Message$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/protobuf/Message$Builder;->build()Lcom/htc/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method public static generalizeCallback(Lcom/htc/protobuf/RpcCallback;Ljava/lang/Class;Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/RpcCallback;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/htc/protobuf/Message;",
            ">(",
            "Lcom/htc/protobuf/RpcCallback",
            "<TType;>;",
            "Ljava/lang/Class",
            "<TType;>;TType;)",
            "Lcom/htc/protobuf/RpcCallback",
            "<",
            "Lcom/htc/protobuf/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, originalCallback:Lcom/htc/protobuf/RpcCallback;,"Lcom/htc/protobuf/RpcCallback<TType;>;"
    .local p1, originalClass:Ljava/lang/Class;,"Ljava/lang/Class<TType;>;"
    .local p2, defaultInstance:Lcom/htc/protobuf/Message;,"TType;"
    new-instance v0, Lcom/htc/protobuf/RpcUtil$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/htc/protobuf/RpcUtil$1;-><init>(Ljava/lang/Class;Lcom/htc/protobuf/Message;Lcom/htc/protobuf/RpcCallback;)V

    return-object v0
.end method

.method public static newOneTimeCallback(Lcom/htc/protobuf/RpcCallback;)Lcom/htc/protobuf/RpcCallback;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParameterType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/RpcCallback",
            "<TParameterType;>;)",
            "Lcom/htc/protobuf/RpcCallback",
            "<TParameterType;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, originalCallback:Lcom/htc/protobuf/RpcCallback;,"Lcom/htc/protobuf/RpcCallback<TParameterType;>;"
    new-instance v0, Lcom/htc/protobuf/RpcUtil$2;

    invoke-direct {v0, p0}, Lcom/htc/protobuf/RpcUtil$2;-><init>(Lcom/htc/protobuf/RpcCallback;)V

    return-object v0
.end method

.method public static specializeCallback(Lcom/htc/protobuf/RpcCallback;)Lcom/htc/protobuf/RpcCallback;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/htc/protobuf/Message;",
            ">(",
            "Lcom/htc/protobuf/RpcCallback",
            "<",
            "Lcom/htc/protobuf/Message;",
            ">;)",
            "Lcom/htc/protobuf/RpcCallback",
            "<TType;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, originalCallback:Lcom/htc/protobuf/RpcCallback;,"Lcom/htc/protobuf/RpcCallback<Lcom/htc/protobuf/Message;>;"
    return-object p0
.end method
