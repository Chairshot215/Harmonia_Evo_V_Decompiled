.class public interface abstract Lcom/htc/protobuf/BlockingService;
.super Ljava/lang/Object;
.source "BlockingService.java"


# virtual methods
.method public abstract callBlockingMethod(Lcom/htc/protobuf/Descriptors$MethodDescriptor;Lcom/htc/protobuf/RpcController;Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/ServiceException;
        }
    .end annotation
.end method

.method public abstract getDescriptorForType()Lcom/htc/protobuf/Descriptors$ServiceDescriptor;
.end method

.method public abstract getRequestPrototype(Lcom/htc/protobuf/Descriptors$MethodDescriptor;)Lcom/htc/protobuf/Message;
.end method

.method public abstract getResponsePrototype(Lcom/htc/protobuf/Descriptors$MethodDescriptor;)Lcom/htc/protobuf/Message;
.end method
