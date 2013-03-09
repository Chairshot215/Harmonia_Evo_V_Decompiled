.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8091
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$20400()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    .locals 1

    .prologue
    .line 8085
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    .locals 3

    .prologue
    .line 8094
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;-><init>()V

    .line 8095
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    .line 8096
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    .locals 1

    .prologue
    .line 8124
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8125
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8127
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8085
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    .locals 3

    .prologue
    .line 8140
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    if-nez v1, :cond_0

    .line 8141
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8144
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    .line 8145
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    .line 8146
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    .locals 2

    .prologue
    .line 8113
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8085
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8085
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

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
    .line 8085
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    .locals 1

    .prologue
    .line 8117
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 8085
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    .locals 1

    .prologue
    .line 8191
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->getUser()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v0

    return-object v0
.end method

.method public hasUser()Z
    .locals 1

    .prologue
    .line 8188
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->hasUser()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 8121
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 8150
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 8154
    :cond_0
    :goto_0
    return-object p0

    .line 8151
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->hasUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8152
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->getUser()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->mergeUser(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8162
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 8163
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 8167
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8168
    :sswitch_0
    return-object p0

    .line 8173
    :sswitch_1
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v0

    .line 8174
    .local v0, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->hasUser()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8175
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->getUser()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    .line 8177
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8178
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->setUser(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    goto :goto_0

    .line 8163
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 8085
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8085
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

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
    .line 8085
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeUser(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8207
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->hasUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->user_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->access$20700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8209
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->user_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->access$20700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->user_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->access$20702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    .line 8214
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->hasUser:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->access$20602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;Z)Z

    .line 8215
    return-object p0

    .line 8212
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->user_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->access$20702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    goto :goto_0
.end method

.method public setUser(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 8202
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->hasUser:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->access$20602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;Z)Z

    .line 8203
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->user_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->access$20702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    .line 8204
    return-object p0
.end method

.method public setUser(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8194
    if-nez p1, :cond_0

    .line 8195
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8197
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->hasUser:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->access$20602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;Z)Z

    .line 8198
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->user_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->access$20702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$UserIdentification;

    .line 8199
    return-object p0
.end method
