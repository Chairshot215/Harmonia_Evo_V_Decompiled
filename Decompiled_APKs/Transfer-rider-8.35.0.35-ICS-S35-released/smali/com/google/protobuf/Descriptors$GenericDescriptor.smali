.class interface abstract Lcom/google/protobuf/Descriptors$GenericDescriptor;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "GenericDescriptor"
.end annotation


# virtual methods
.method public abstract getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;
.end method

.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract toProto()Lcom/google/protobuf/Message;
.end method
