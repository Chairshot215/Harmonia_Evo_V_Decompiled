.class public interface abstract Lcom/htc/protobuf/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/htc/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/Message$Builder;
    }
.end annotation


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getAllFields()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultInstanceForType()Lcom/htc/protobuf/Message;
.end method

.method public abstract getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
.end method

.method public abstract getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
.end method

.method public abstract getRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
.end method

.method public abstract getRepeatedFieldCount(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)I
.end method

.method public abstract getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;
.end method

.method public abstract hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract newBuilderForType()Lcom/htc/protobuf/Message$Builder;
.end method

.method public abstract toBuilder()Lcom/htc/protobuf/Message$Builder;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
