.class public interface abstract Lcom/google/protobuf/MessageLite;
.super Ljava/lang/Object;
.source "MessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MessageLite$Builder;
    }
.end annotation


# virtual methods
.method public abstract getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
.end method

.method public abstract getSerializedSize()I
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
.end method

.method public abstract toBuilder()Lcom/google/protobuf/MessageLite$Builder;
.end method

.method public abstract toByteArray()[B
.end method

.method public abstract toByteString()Lcom/google/protobuf/ByteString;
.end method

.method public abstract writeDelimitedTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
