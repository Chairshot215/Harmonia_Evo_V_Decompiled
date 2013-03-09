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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/protobuf/Message;Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message;
    .locals 1

    invoke-static {p0, p1}, Lcom/htc/protobuf/RpcUtil;->copyAsType(Lcom/htc/protobuf/Message;Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method private static copyAsType(Lcom/htc/protobuf/Message;Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/htc/protobuf/Message;",
            ">(TType;",
            "Lcom/htc/protobuf/Message;",
            ")TType;"
        }
    .end annotation

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

    new-instance v0, Lcom/htc/protobuf/RpcUtil$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/htc/protobuf/RpcUtil$1;-><init>(Ljava/lang/Class;Lcom/htc/protobuf/Message;Lcom/htc/protobuf/RpcCallback;)V

    return-object v0
.end method

.method public static newOneTimeCallback(Lcom/htc/protobuf/RpcCallback;)Lcom/htc/protobuf/RpcCallback;
    .locals 1
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

    new-instance v0, Lcom/htc/protobuf/RpcUtil$2;

    invoke-direct {v0, p0}, Lcom/htc/protobuf/RpcUtil$2;-><init>(Lcom/htc/protobuf/RpcCallback;)V

    return-object v0
.end method

.method public static specializeCallback(Lcom/htc/protobuf/RpcCallback;)Lcom/htc/protobuf/RpcCallback;
    .locals 0
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

    return-object p0
.end method
