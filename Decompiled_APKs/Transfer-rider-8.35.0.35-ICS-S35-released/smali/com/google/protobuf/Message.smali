.class public interface abstract Lcom/google/protobuf/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/google/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Message$Builder;
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
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultInstanceForType()Lcom/google/protobuf/Message;
.end method

.method public abstract getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
.end method

.method public abstract getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
.end method

.method public abstract getRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
.end method

.method public abstract getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I
.end method

.method public abstract getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
.end method

.method public abstract hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract newBuilderForType()Lcom/google/protobuf/Message$Builder;
.end method

.method public abstract toBuilder()Lcom/google/protobuf/Message$Builder;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
