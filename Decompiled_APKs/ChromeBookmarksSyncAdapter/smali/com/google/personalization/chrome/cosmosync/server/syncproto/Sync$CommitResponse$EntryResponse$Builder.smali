.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5868
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$15100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 1

    .prologue
    .line 5862
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 3

    .prologue
    .line 5871
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;-><init>()V

    .line 5872
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    .line 5873
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    .locals 1

    .prologue
    .line 5901
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5902
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5904
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5862
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    .locals 3

    .prologue
    .line 5917
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    if-nez v1, :cond_0

    .line 5918
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5921
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    .line 5922
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    .line 5923
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 2

    .prologue
    .line 5890
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5862
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5862
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

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
    .line 5862
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    .locals 1

    .prologue
    .line 5894
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 5862
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5898
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 5927
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5952
    :cond_0
    :goto_0
    return-object p0

    .line 5928
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasResponseType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5929
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getResponseType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setResponseType(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    .line 5931
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasIdString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5932
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getIdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    .line 5934
    :cond_3
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasParentIdString()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5935
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getParentIdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setParentIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    .line 5937
    :cond_4
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasPositionInParent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5938
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getPositionInParent()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setPositionInParent(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    .line 5940
    :cond_5
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5941
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setVersion(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    .line 5943
    :cond_6
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5944
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    .line 5946
    :cond_7
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasNonUniqueName()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5947
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getNonUniqueName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setNonUniqueName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    .line 5949
    :cond_8
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5950
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setErrorMessage(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5960
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5961
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 5965
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5966
    :sswitch_0
    return-object p0

    .line 5971
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 5972
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->valueOf(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    move-result-object v2

    .line 5973
    .local v2, value:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;
    if-eqz v2, :cond_0

    .line 5974
    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setResponseType(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    goto :goto_0

    .line 5979
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    goto :goto_0

    .line 5983
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setParentIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    goto :goto_0

    .line 5987
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setPositionInParent(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    goto :goto_0

    .line 5991
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setVersion(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    goto :goto_0

    .line 5995
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    goto :goto_0

    .line 5999
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setNonUniqueName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    goto :goto_0

    .line 6003
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->setErrorMessage(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    goto :goto_0

    .line 5961
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
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
    .line 5862
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5862
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

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
    .line 5862
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6160
    if-nez p1, :cond_0

    .line 6161
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6163
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasErrorMessage:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$16702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z

    .line 6164
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->errorMessage_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$16802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 6165
    return-object p0
.end method

.method public setIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6040
    if-nez p1, :cond_0

    .line 6041
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6043
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasIdString:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$15502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z

    .line 6044
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->idString_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$15602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 6045
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6118
    if-nez p1, :cond_0

    .line 6119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6121
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasName:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$16302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z

    .line 6122
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$16402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 6123
    return-object p0
.end method

.method public setNonUniqueName(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6139
    if-nez p1, :cond_0

    .line 6140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6142
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasNonUniqueName:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$16502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z

    .line 6143
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->nonUniqueName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$16602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 6144
    return-object p0
.end method

.method public setParentIdString(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6061
    if-nez p1, :cond_0

    .line 6062
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6064
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasParentIdString:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$15702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z

    .line 6065
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->parentIdString_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$15802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 6066
    return-object p0
.end method

.method public setPositionInParent(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6082
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasPositionInParent:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$15902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z

    .line 6083
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->positionInParent_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$16002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;J)J

    .line 6084
    return-object p0
.end method

.method public setResponseType(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6019
    if-nez p1, :cond_0

    .line 6020
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6022
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasResponseType:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$15302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z

    .line 6023
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->responseType_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$15402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    .line 6024
    return-object p0
.end method

.method public setVersion(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6100
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$16102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;Z)Z

    .line 6101
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->version_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->access$16202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;J)J

    .line 6102
    return-object p0
.end method
