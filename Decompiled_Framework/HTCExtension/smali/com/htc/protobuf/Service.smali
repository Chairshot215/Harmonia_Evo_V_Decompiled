.class public interface abstract Lcom/htc/protobuf/Service;
.super Ljava/lang/Object;
.source "Service.java"


# virtual methods
.method public abstract callMethod(Lcom/htc/protobuf/Descriptors$MethodDescriptor;Lcom/htc/protobuf/RpcController;Lcom/htc/protobuf/Message;Lcom/htc/protobuf/RpcCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Descriptors$MethodDescriptor;",
            "Lcom/htc/protobuf/RpcController;",
            "Lcom/htc/protobuf/Message;",
            "Lcom/htc/protobuf/RpcCallback",
            "<",
            "Lcom/htc/protobuf/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDescriptorForType()Lcom/htc/protobuf/Descriptors$ServiceDescriptor;
.end method

.method public abstract getRequestPrototype(Lcom/htc/protobuf/Descriptors$MethodDescriptor;)Lcom/htc/protobuf/Message;
.end method

.method public abstract getResponsePrototype(Lcom/htc/protobuf/Descriptors$MethodDescriptor;)Lcom/htc/protobuf/Message;
.end method
