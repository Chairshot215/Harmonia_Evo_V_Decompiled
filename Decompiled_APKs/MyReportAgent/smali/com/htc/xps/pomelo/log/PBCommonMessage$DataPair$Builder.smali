.class public final Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "PBCommonMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 1

    .prologue
    .line 792
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->create()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 847
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 3

    .prologue
    .line 800
    new-instance v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;-><init>()V

    .line 801
    .local v0, builder:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    new-instance v1, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;-><init>(Lcom/htc/xps/pomelo/log/PBCommonMessage$1;)V

    iput-object v1, v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    .line 802
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->build()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->build()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 838
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 3

    .prologue
    .line 851
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    if-nez v1, :cond_0

    .line 852
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    .line 856
    .local v0, returnMe:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    .line 857
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->clear()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->clear()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->clear()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    if-nez v0, :cond_0

    .line 811
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :cond_0
    new-instance v0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;-><init>(Lcom/htc/xps/pomelo/log/PBCommonMessage$1;)V

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    .line 815
    return-object p0
.end method

.method public clearKey()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasKey:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->access$3002(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;Z)Z

    .line 932
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getKey()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->key_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->access$3102(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;Ljava/lang/String;)Ljava/lang/String;

    .line 933
    return-object p0
.end method

.method public clearValue()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasValue:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->access$3202(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;Z)Z

    .line 953
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getValue()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->value_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->access$3302(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;Ljava/lang/String;)Ljava/lang/String;

    .line 954
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 2

    .prologue
    .line 819
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->create()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

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
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->clone()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1

    .prologue
    .line 828
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 824
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasKey()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasValue()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->internalGetResult()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->isInitialized()Z

    move-result v0

    return v0
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
    .line 792
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 792
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

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
    .line 792
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

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
    .line 792
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 792
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

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
    .line 792
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 889
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 890
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 895
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 897
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 898
    :goto_1
    return-object p0

    .line 892
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 903
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setKey(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    goto :goto_0

    .line 907
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setValue(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    goto :goto_0

    .line 890
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 861
    instance-of v0, p1, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    if-eqz v0, :cond_0

    .line 862
    check-cast p1, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    move-result-object p0

    .line 865
    .end local p0
    :goto_0
    return-object p0

    .line 864
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 870
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 878
    :goto_0
    return-object p0

    .line 871
    :cond_0
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setKey(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    .line 874
    :cond_1
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 875
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->setValue(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;

    .line 877
    :cond_2
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setKey(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 923
    if-nez p1, :cond_0

    .line 924
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasKey:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->access$3002(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;Z)Z

    .line 927
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->key_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->access$3102(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;Ljava/lang/String;)Ljava/lang/String;

    .line 928
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 944
    if-nez p1, :cond_0

    .line 945
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->hasValue:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->access$3202(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;Z)Z

    .line 948
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair$Builder;->result:Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;

    #setter for: Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->value_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;->access$3302(Lcom/htc/xps/pomelo/log/PBCommonMessage$DataPair;Ljava/lang/String;)Ljava/lang/String;

    .line 949
    return-object p0
.end method
