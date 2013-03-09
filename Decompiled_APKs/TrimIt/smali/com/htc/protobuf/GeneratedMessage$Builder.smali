.class public abstract Lcom/htc/protobuf/GeneratedMessage$Builder;
.super Lcom/htc/protobuf/AbstractMessage$Builder;
.source "GeneratedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/htc/protobuf/GeneratedMessage$Builder;",
        ">",
        "Lcom/htc/protobuf/AbstractMessage$Builder",
        "<TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 150
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-direct {p0}, Lcom/htc/protobuf/AbstractMessage$Builder;-><init>()V

    return-void
.end method

.method private internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 173
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/GeneratedMessage;->internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1
    .parameter "field"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->addRepeated(Lcom/htc/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V

    .line 234
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->clear(Lcom/htc/protobuf/GeneratedMessage$Builder;)V

    .line 212
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 147
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->clone()Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 147
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->clone()Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 147
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->clone()Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 147
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->clone()Lcom/htc/protobuf/GeneratedMessage$Builder;

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
    .line 147
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->clone()Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 181
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/GeneratedMessage;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 177
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->access$000(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1
    .parameter "field"

    .prologue
    .line 194
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/GeneratedMessage;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/GeneratedMessage;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1
    .parameter "field"
    .parameter "index"

    .prologue
    .line 221
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage;->getRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedFieldCount(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1
    .parameter "field"

    .prologue
    .line 216
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/GeneratedMessage;->getRepeatedFieldCount(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)I

    move-result v0

    return v0
.end method

.method public final getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 238
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/GeneratedMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessage;->access$200(Lcom/htc/protobuf/GeneratedMessage;)Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 190
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/GeneratedMessage;->hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v0

    return v0
.end method

.method protected abstract internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 259
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 2
    .parameter "unknownFields"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage;

    move-result-object v0

    .line 251
    .local v0, result:Lcom/htc/protobuf/GeneratedMessage;
    #getter for: Lcom/htc/protobuf/GeneratedMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessage;->access$200(Lcom/htc/protobuf/GeneratedMessage;)Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/GeneratedMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;
    invoke-static {v0, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$202(Lcom/htc/protobuf/GeneratedMessage;Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet;

    .line 255
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "field"

    .prologue
    .line 186
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->newBuilder()Lcom/htc/protobuf/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z
    .locals 1
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
    .line 271
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p2, p4, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFieldFrom(ILcom/htc/protobuf/CodedInputStream;)Z

    move-result v0

    return v0
.end method

.method public setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1
    .parameter "field"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->set(Lcom/htc/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V

    .line 207
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage$Builder;->setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1
    .parameter "field"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "I",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    #calls: Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->setRepeated(Lcom/htc/protobuf/GeneratedMessage$Builder;ILjava/lang/Object;)V

    .line 228
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 147
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/protobuf/GeneratedMessage$Builder;->setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1
    .parameter "unknownFields"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessage;

    move-result-object v0

    #setter for: Lcom/htc/protobuf/GeneratedMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessage;->access$202(Lcom/htc/protobuf/GeneratedMessage;Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet;

    .line 244
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    .local p0, this:Lcom/htc/protobuf/GeneratedMessage$Builder;,"Lcom/htc/protobuf/GeneratedMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method
