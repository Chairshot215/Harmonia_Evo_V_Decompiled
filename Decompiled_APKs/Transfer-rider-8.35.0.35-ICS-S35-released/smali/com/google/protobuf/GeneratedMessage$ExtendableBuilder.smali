.class public abstract Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GeneratedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;",
        "BuilderType:",
        "Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;",
        ">",
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 560
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final addExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 628
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    .local p2, value:Ljava/lang/Object;,"TType;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v1

    .line 629
    .local v1, message:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)V
    invoke-static {v1, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$800(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)V

    .line 630
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 631
    .local v0, descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    #getter for: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v2

    #calls: Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->access$1000(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 633
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .parameter "field"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 707
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    .line 709
    .local v0, message:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$1100(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 710
    #getter for: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 713
    .end local v0           #message:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    .end local p0           #this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    :goto_0
    return-object p0

    .restart local p0       #this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-object p0, v1

    goto :goto_0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final clearExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 639
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TMessageType;*>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    .line 640
    .local v0, message:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)V
    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$800(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)V

    .line 641
    #getter for: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/FieldSet;->clearField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 642
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    .line 683
    .local v0, message:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$1100(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 684
    #getter for: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/FieldSet;->clearField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 687
    .end local v0           #message:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    .end local p0           #this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    :goto_0
    return-object p0

    .restart local p0       #this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-object p0, v1

    goto :goto_0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 567
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

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

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;TType;>;)TType;"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TMessageType;TType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->getExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;I)TType;"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->getExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getExtensionCount(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;)I"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->getExtensionCount(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)I

    move-result v0

    return v0
.end method

.method public final hasExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;*>;)Z"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TMessageType;*>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->hasExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)Z

    move-result v0

    return v0
.end method

.method protected abstract internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/GeneratedMessage$ExtendableMessage",
            "<TMessageType;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    return-object v0
.end method

.method protected final mergeExtensionFields(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 718
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    #getter for: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    #getter for: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    .line 719
    return-void
.end method

.method protected parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 2
    .parameter "input"
    .parameter "unknownFields"
    .parameter "extensionRegistry"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    .line 656
    .local v0, message:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    invoke-static {p1, p2, p3, p0, p4}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFieldFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Message$Builder;I)Z

    move-result v1

    return v1
.end method

.method public final setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 4
    .parameter
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 615
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    .local p3, value:Ljava/lang/Object;,"TType;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v1

    .line 616
    .local v1, message:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)V
    invoke-static {v1, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$800(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)V

    .line 617
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 618
    .local v0, descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    #getter for: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v2

    #calls: Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, p3}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->access$1000(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/google/protobuf/FieldSet;->setRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 621
    return-object p0
.end method

.method public final setExtension(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessage$GeneratedExtension",
            "<TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessage$GeneratedExtension<TMessageType;TType;>;"
    .local p2, value:Ljava/lang/Object;,"TType;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v1

    .line 604
    .local v1, message:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)V
    invoke-static {v1, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$800(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;)V

    .line 605
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 606
    .local v0, descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    #getter for: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v2

    #calls: Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->toReflectionType(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;->access$900(Lcom/google/protobuf/GeneratedMessage$GeneratedExtension;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 608
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .parameter "field"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 669
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    .line 671
    .local v0, message:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$1100(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 672
    #getter for: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 675
    .end local v0           #message:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    .end local p0           #this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    :goto_0
    return-object p0

    .restart local p0       #this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-object p0, v1

    goto :goto_0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 2
    .parameter "field"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "I",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    move-result-object v0

    .line 696
    .local v0, message:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$1100(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 697
    #getter for: Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$500(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/protobuf/FieldSet;->setRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 700
    .end local v0           #message:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;,"Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<TMessageType;>;"
    .end local p0           #this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    :goto_0
    return-object p0

    .restart local p0       #this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessage$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-object p0, v1

    goto :goto_0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 555
    .local p0, this:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method
