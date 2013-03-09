.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8808
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$22200()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    .locals 1

    .prologue
    .line 8802
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    .locals 3

    .prologue
    .line 8811
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;-><init>()V

    .line 8812
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    .line 8813
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    .locals 1

    .prologue
    .line 8841
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8842
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8844
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8802
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    .locals 3

    .prologue
    .line 8857
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    if-nez v1, :cond_0

    .line 8858
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8861
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    .line 8862
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    .line 8863
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    .locals 2

    .prologue
    .line 8830
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8802
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8802
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

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
    .line 8802
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    .locals 1

    .prologue
    .line 8834
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 8802
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 8838
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 8867
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 8877
    :cond_0
    :goto_0
    return-object p0

    .line 8868
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasSetSyncPollInterval()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8869
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getSetSyncPollInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->setSetSyncPollInterval(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    .line 8871
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasSetSyncLongPollInterval()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8872
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getSetSyncLongPollInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->setSetSyncLongPollInterval(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    .line 8874
    :cond_3
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasMaxCommitBatchSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8875
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getMaxCommitBatchSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->setMaxCommitBatchSize(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8885
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 8886
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 8890
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8891
    :sswitch_0
    return-object p0

    .line 8896
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->setSetSyncPollInterval(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    goto :goto_0

    .line 8900
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->setSetSyncLongPollInterval(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    goto :goto_0

    .line 8904
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->setMaxCommitBatchSize(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    goto :goto_0

    .line 8886
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8802
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8802
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8802
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMaxCommitBatchSize(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8956
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasMaxCommitBatchSize:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->access$22802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;Z)Z

    .line 8957
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->maxCommitBatchSize_:I
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->access$22902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;I)I

    .line 8958
    return-object p0
.end method

.method public setSetSyncLongPollInterval(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8938
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasSetSyncLongPollInterval:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->access$22602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;Z)Z

    .line 8939
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->setSyncLongPollInterval_:I
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->access$22702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;I)I

    .line 8940
    return-object p0
.end method

.method public setSetSyncPollInterval(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8920
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->hasSetSyncPollInterval:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->access$22402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;Z)Z

    .line 8921
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->setSyncPollInterval_:I
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->access$22502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;I)I

    .line 8922
    return-object p0
.end method
