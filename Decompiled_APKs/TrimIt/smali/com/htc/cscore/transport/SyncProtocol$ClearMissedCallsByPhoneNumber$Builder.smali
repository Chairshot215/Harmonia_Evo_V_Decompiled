.class public final Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44061
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$128500(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44056
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$128600()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    .locals 1

    .prologue
    .line 44056
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44107
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44108
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 44111
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    .locals 3

    .prologue
    .line 44064
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;-><init>()V

    .line 44065
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    .line 44066
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1

    .prologue
    .line 44099
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44100
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 44102
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 3

    .prologue
    .line 44115
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    if-nez v1, :cond_0

    .line 44116
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44119
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    .line 44120
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    .line 44121
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 44074
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    if-nez v0, :cond_0

    .line 44075
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44078
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    .line 44079
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 44188
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->hasPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->access$128802(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;Z)Z

    .line 44189
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->phoneNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->access$128902(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    .line 44190
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 44083
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

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
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1

    .prologue
    .line 44092
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 44088
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44177
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 44174
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->hasPhoneNumber()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1

    .prologue
    .line 44070
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 44056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 44096
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 44134
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 44139
    :goto_0
    return-object p0

    .line 44135
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44136
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    .line 44138
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44146
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 44150
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 44151
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 44156
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44158
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 44159
    :goto_1
    return-object p0

    .line 44153
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 44164
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    goto :goto_0

    .line 44151
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x34f2 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 44125
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    if-eqz v0, :cond_0

    .line 44126
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object p0

    .line 44129
    .end local p0
    :goto_0
    return-object p0

    .line 44128
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44056
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44056
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44056
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44056
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44056
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44056
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 44180
    if-nez p1, :cond_0

    .line 44181
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44183
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->hasPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->access$128802(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;Z)Z

    .line 44184
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->phoneNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->access$128902(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    .line 44185
    return-object p0
.end method
