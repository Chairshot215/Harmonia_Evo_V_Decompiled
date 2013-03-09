.class public final Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8067
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$23200(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8062
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23300()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 1

    .prologue
    .line 8062
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8113
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8114
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 8117
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 3

    .prologue
    .line 8070
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;-><init>()V

    .line 8071
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .line 8072
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1

    .prologue
    .line 8105
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8106
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8108
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 3

    .prologue
    .line 8121
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    if-nez v1, :cond_0

    .line 8122
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8125
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .line 8126
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .line 8127
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 2

    .prologue
    .line 8080
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    if-nez v0, :cond_0

    .line 8081
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8084
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .line 8085
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 2

    .prologue
    .line 8215
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23502(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Z)Z

    .line 8216
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23602(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 8217
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 2

    .prologue
    .line 8089
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

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
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1

    .prologue
    .line 8098
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8094
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1

    .prologue
    .line 8188
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public hasFootprintMemo()Z
    .locals 1

    .prologue
    .line 8185
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1

    .prologue
    .line 8076
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 8062
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 8102
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8204
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23600(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8206
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23600(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23602(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 8211
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23502(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Z)Z

    .line 8212
    return-object p0

    .line 8209
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23602(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 8140
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 8145
    :goto_0
    return-object p0

    .line 8141
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8142
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    .line 8144
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8152
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 8156
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 8157
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 8162
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8164
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 8165
    :goto_1
    return-object p0

    .line 8159
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 8170
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    .line 8171
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->hasFootprintMemo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8172
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    .line 8174
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 8175
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->setFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    goto :goto_0

    .line 8157
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3f3a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 8131
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    if-eqz v0, :cond_0

    .line 8132
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object p0

    .line 8135
    .end local p0
    :goto_0
    return-object p0

    .line 8134
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
    .line 8062
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8062
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

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
    .line 8062
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

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
    .line 8062
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8062
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

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
    .line 8062
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 8199
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23502(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Z)Z

    .line 8200
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23602(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 8201
    return-object p0
.end method

.method public setFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8191
    if-nez p1, :cond_0

    .line 8192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8194
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23502(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Z)Z

    .line 8195
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->access$23602(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 8196
    return-object p0
.end method
