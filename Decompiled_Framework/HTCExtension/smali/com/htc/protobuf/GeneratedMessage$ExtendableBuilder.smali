.class public abstract Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "GeneratedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;",
        "BuilderType:",
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;",
        ">",
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final addExtension(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v1

    #calls: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V
    invoke-static {v1, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$800(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V

    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v2

    #calls: Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->access$1000(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/htc/protobuf/FieldSet;->addRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$1100(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    #getter for: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/htc/protobuf/FieldSet;->addRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-object p0, v1

    goto :goto_0
.end method

.method public bridge synthetic addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final clearExtension(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$800(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V

    #getter for: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/FieldSet;->clearField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$1100(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    #getter for: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/FieldSet;->clearField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)V

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-object p0, v1

    goto :goto_0
.end method

.method public bridge synthetic clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;TType;>;)TType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->getExtension(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;I)TType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->getExtension(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getExtensionCount(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->getExtensionCount(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)I

    move-result v0

    return v0
.end method

.method public final hasExtension(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->hasExtension(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)Z

    move-result v0

    return v0
.end method

.method protected abstract internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage",
            "<TMessageType;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    return-object v0
.end method

.method protected final mergeExtensionFields(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/FieldSet;->mergeFrom(Lcom/htc/protobuf/FieldSet;)V

    return-void
.end method

.method protected parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    invoke-static {p1, p2, p3, p0, p4}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFieldFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;Lcom/htc/protobuf/Message$Builder;I)Z

    move-result v1

    return v1
.end method

.method public final setExtension(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v1

    #calls: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V
    invoke-static {v1, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$800(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V

    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v2

    #calls: Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, p3}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->access$1000(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/htc/protobuf/FieldSet;->setRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    return-object p0
.end method

.method public final setExtension(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v1

    #calls: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V
    invoke-static {v1, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$800(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;)V

    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v2

    #calls: Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->toReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;->access$900(Lcom/htc/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/htc/protobuf/FieldSet;->setField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$1100(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    #getter for: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/htc/protobuf/FieldSet;->setField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage$Builder;->setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-object p0, v1

    goto :goto_0
.end method

.method public bridge synthetic setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "I",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$1100(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    #getter for: Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/protobuf/FieldSet;->setRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/protobuf/GeneratedMessage$Builder;->setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-object p0, v1

    goto :goto_0
.end method

.method public bridge synthetic setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method
