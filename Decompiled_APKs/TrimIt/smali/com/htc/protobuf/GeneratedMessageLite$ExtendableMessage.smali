.class public abstract Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;
.super Lcom/htc/protobuf/GeneratedMessageLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<TMessageType;>;>",
        "Lcom/htc/protobuf/GeneratedMessageLite;"
    }
.end annotation


# instance fields
.field private final extensions:Lcom/htc/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/FieldSet",
            "<",
            "Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 95
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessageLite;-><init>()V

    .line 96
    invoke-static {}, Lcom/htc/protobuf/FieldSet;->newFieldSet()Lcom/htc/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    .line 95
    return-void
.end method

.method static synthetic access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    return-void
.end method

.method private verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;*>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/htc/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method protected extensionsAreInitialized()Z
    .locals 1

    .prologue
    .line 148
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/htc/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSize()I
    .locals 1

    .prologue
    .line 203
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/htc/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSizeAsMessageSet()I
    .locals 1

    .prologue
    .line 206
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/htc/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    return v0
.end method

.method public final getExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;TType;>;)TType;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 129
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/FieldSet;->getField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 131
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$100(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    .end local v0           #value:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public final getExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;I)TType;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 143
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/htc/protobuf/FieldSet;->getRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getExtensionCount(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;)I"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 121
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v0

    return v0
.end method

.method public final hasExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;*>;)Z"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    invoke-direct {p0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 114
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/FieldSet;->hasField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    return v0
.end method

.method protected newExtensionWriter()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage",
            "<TMessageType;>.ExtensionWriter;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    new-instance v0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/htc/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method

.method protected newMessageSetExtensionWriter()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage",
            "<TMessageType;>.ExtensionWriter;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    new-instance v0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/htc/protobuf/GeneratedMessageLite$1;)V

    return-object v0
.end method
