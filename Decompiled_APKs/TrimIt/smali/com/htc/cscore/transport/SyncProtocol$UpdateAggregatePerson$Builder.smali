.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3531
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$8900(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3526
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9000()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 1

    .prologue
    .line 3526
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3577
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3578
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3581
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 3

    .prologue
    .line 3534
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;-><init>()V

    .line 3535
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    .line 3536
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1

    .prologue
    .line 3569
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3570
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3572
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 3

    .prologue
    .line 3585
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    if-nez v1, :cond_0

    .line 3586
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3589
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    .line 3590
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    .line 3591
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 3544
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    if-nez v0, :cond_0

    .line 3545
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3548
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    .line 3549
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 3679
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->hasPerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->access$9202(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;Z)Z

    .line 3680
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->access$9302(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 3681
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 3553
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

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
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1

    .prologue
    .line 3562
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3558
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    .prologue
    .line 3652
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public hasPerson()Z
    .locals 1

    .prologue
    .line 3649
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->hasPerson()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1

    .prologue
    .line 3540
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3526
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3566
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3604
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3609
    :goto_0
    return-object p0

    .line 3605
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->hasPerson()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3606
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergePerson(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    .line 3608
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3616
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 3620
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3621
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 3626
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3628
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 3629
    :goto_1
    return-object p0

    .line 3623
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 3634
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    .line 3635
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->hasPerson()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3636
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->getPerson()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 3638
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 3639
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->setPerson(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    goto :goto_0

    .line 3621
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1c2 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3595
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    if-eqz v0, :cond_0

    .line 3596
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object p0

    .line 3599
    .end local p0
    :goto_0
    return-object p0

    .line 3598
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
    .line 3526
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3526
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

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
    .line 3526
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

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
    .line 3526
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3526
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

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
    .line 3526
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePerson(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3668
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->hasPerson()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->access$9300(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3670
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->access$9300(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->access$9302(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 3675
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->hasPerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->access$9202(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;Z)Z

    .line 3676
    return-object p0

    .line 3673
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->access$9302(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    goto :goto_0
.end method

.method public setPerson(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3663
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->hasPerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->access$9202(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;Z)Z

    .line 3664
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->access$9302(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 3665
    return-object p0
.end method

.method public setPerson(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3655
    if-nez p1, :cond_0

    .line 3656
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3658
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->hasPerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->access$9202(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;Z)Z

    .line 3659
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->person_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->access$9302(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 3660
    return-object p0
.end method
