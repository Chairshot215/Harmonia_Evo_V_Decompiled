.class public interface abstract Lcom/htc/protobuf/BlockingRpcChannel;
.super Ljava/lang/Object;
.source "BlockingRpcChannel.java"


# virtual methods
.method public abstract callBlockingMethod(Lcom/htc/protobuf/Descriptors$MethodDescriptor;Lcom/htc/protobuf/RpcController;Lcom/htc/protobuf/Message;Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/ServiceException;
        }
    .end annotation
.end method
