.class public abstract Lcom/htc/protobuf/GeneratedMessageLite$Builder;
.super Lcom/htc/protobuf/AbstractMessageLite$Builder;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/htc/protobuf/GeneratedMessageLite;",
        "BuilderType:",
        "Lcom/htc/protobuf/GeneratedMessageLite$Builder;",
        ">",
        "Lcom/htc/protobuf/AbstractMessageLite$Builder",
        "<TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 51
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$Builder;,"Lcom/htc/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/htc/protobuf/AbstractMessageLite$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 47
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$Builder;,"Lcom/htc/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/htc/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/GeneratedMessageLite$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$Builder;,"Lcom/htc/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$Builder;,"Lcom/htc/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/htc/protobuf/GeneratedMessageLite$Builder;

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
    .line 47
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$Builder;,"Lcom/htc/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/htc/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDefaultInstanceForType()Lcom/htc/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 47
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$Builder;,"Lcom/htc/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected abstract internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation
.end method

.method public abstract mergeFrom(Lcom/htc/protobuf/GeneratedMessageLite;)Lcom/htc/protobuf/GeneratedMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method protected parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$Builder;,"Lcom/htc/protobuf/GeneratedMessageLite$Builder<TMessageType;TBuilderType;>;"
    invoke-virtual {p1, p3}, Lcom/htc/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    return v0
.end method
