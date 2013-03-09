.class public final Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$17600(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17700()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 3

    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;-><init>()V

    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 3

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearIsExtension()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasIsExtension:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$18102(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isExtension_:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$18202(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Z)Z

    return-object p0
.end method

.method public clearNamePart()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasNamePart:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$17902(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getNamePart()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$18002(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

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

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIsExtension()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getIsExtension()Z

    move-result v0

    return v0
.end method

.method public getNamePart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getNamePart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasIsExtension()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasIsExtension()Z

    move-result v0

    return v0
.end method

.method public hasNamePart()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasNamePart()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->setNamePart(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->setIsExtension(Z)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasNamePart()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getNamePart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->setNamePart(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasIsExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getIsExtension()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->setIsExtension(Z)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIsExtension(Z)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasIsExtension:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$18102(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isExtension_:Z
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$18202(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Z)Z

    return-object p0
.end method

.method public setNamePart(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasNamePart:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$17902(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$18002(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
