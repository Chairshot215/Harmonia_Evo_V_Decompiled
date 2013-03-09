.class public final Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7774
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$22500(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7769
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22600()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 1

    .prologue
    .line 7769
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7820
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7821
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 7824
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 3

    .prologue
    .line 7777
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;-><init>()V

    .line 7778
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    .line 7779
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1

    .prologue
    .line 7812
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7813
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7815
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 3

    .prologue
    .line 7828
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    if-nez v1, :cond_0

    .line 7829
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7832
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    .line 7833
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    .line 7834
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 2

    .prologue
    .line 7787
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    if-nez v0, :cond_0

    .line 7788
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7791
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    .line 7792
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 2

    .prologue
    .line 7922
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->hasFootprintImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->access$22802(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;Z)Z

    .line 7923
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->footprintImage_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->access$22902(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 7924
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 2

    .prologue
    .line 7796
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

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
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1

    .prologue
    .line 7805
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7801
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1

    .prologue
    .line 7895
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public hasFootprintImage()Z
    .locals 1

    .prologue
    .line 7892
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->hasFootprintImage()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1

    .prologue
    .line 7783
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 7769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7809
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7911
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->hasFootprintImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->footprintImage_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->access$22900(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7913
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->footprintImage_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->access$22900(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->footprintImage_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->access$22902(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 7918
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->hasFootprintImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->access$22802(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;Z)Z

    .line 7919
    return-object p0

    .line 7916
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->footprintImage_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->access$22902(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 7847
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7852
    :goto_0
    return-object p0

    .line 7848
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->hasFootprintImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7849
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    .line 7851
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7859
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 7863
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7864
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 7869
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7871
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 7872
    :goto_1
    return-object p0

    .line 7866
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 7877
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    .line 7878
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->hasFootprintImage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7879
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->getFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    .line 7881
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 7882
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->setFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    goto :goto_0

    .line 7864
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1272 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 7838
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    if-eqz v0, :cond_0

    .line 7839
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object p0

    .line 7842
    .end local p0
    :goto_0
    return-object p0

    .line 7841
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
    .line 7769
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7769
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

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
    .line 7769
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

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
    .line 7769
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7769
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

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
    .line 7769
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 7906
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->hasFootprintImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->access$22802(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;Z)Z

    .line 7907
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->footprintImage_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->access$22902(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 7908
    return-object p0
.end method

.method public setFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7898
    if-nez p1, :cond_0

    .line 7899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7901
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->hasFootprintImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->access$22802(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;Z)Z

    .line 7902
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->footprintImage_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->access$22902(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 7903
    return-object p0
.end method
