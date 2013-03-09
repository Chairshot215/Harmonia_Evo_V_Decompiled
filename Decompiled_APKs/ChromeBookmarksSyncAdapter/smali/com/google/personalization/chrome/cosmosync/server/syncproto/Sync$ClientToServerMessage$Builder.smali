.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5143
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$13000()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 1

    .prologue
    .line 5137
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 3

    .prologue
    .line 5146
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;-><init>()V

    .line 5147
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    .line 5148
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;
    .locals 1

    .prologue
    .line 5176
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5177
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5179
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5137
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;
    .locals 3

    .prologue
    .line 5192
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    if-nez v1, :cond_0

    .line 5193
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5196
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    .line 5197
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    .line 5198
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2

    .prologue
    .line 5165
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5137
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5137
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

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
    .line 5137
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    .locals 1

    .prologue
    .line 5452
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v0

    return-object v0
.end method

.method public getClearUserData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    .locals 1

    .prologue
    .line 5489
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getClearUserData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v0

    return-object v0
.end method

.method public getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    .locals 1

    .prologue
    .line 5378
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;
    .locals 1

    .prologue
    .line 5169
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 5137
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    move-result-object v0

    return-object v0
.end method

.method public getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    .locals 1

    .prologue
    .line 5415
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthenticate()Z
    .locals 1

    .prologue
    .line 5449
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasAuthenticate()Z

    move-result v0

    return v0
.end method

.method public hasClearUserData()Z
    .locals 1

    .prologue
    .line 5486
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasClearUserData()Z

    move-result v0

    return v0
.end method

.method public hasCommit()Z
    .locals 1

    .prologue
    .line 5375
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasCommit()Z

    move-result v0

    return v0
.end method

.method public hasGetUpdates()Z
    .locals 1

    .prologue
    .line 5412
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasGetUpdates()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5173
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAuthenticate(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5468
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasAuthenticate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5470
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    .line 5475
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasAuthenticate:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5476
    return-object p0

    .line 5473
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    goto :goto_0
.end method

.method public mergeClearUserData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5505
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasClearUserData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5507
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    .line 5512
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasClearUserData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5513
    return-object p0

    .line 5510
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    goto :goto_0
.end method

.method public mergeCommit(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5394
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13900(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5396
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13900(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    .line 5401
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasCommit:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5402
    return-object p0

    .line 5399
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5202
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5230
    :cond_0
    :goto_0
    return-object p0

    .line 5203
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasShare()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5204
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getShare()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setShare(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    .line 5206
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasProtocolVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5207
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getProtocolVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setProtocolVersion(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    .line 5209
    :cond_3
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasMessageContents()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5210
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getMessageContents()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setMessageContents(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    .line 5212
    :cond_4
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasCommit()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5213
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->mergeCommit(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    .line 5215
    :cond_5
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasGetUpdates()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5216
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->mergeGetUpdates(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    .line 5218
    :cond_6
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasAuthenticate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5219
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->mergeAuthenticate(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    .line 5221
    :cond_7
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasClearUserData()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5222
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getClearUserData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->mergeClearUserData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    .line 5224
    :cond_8
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasStoreBirthday()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5225
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getStoreBirthday()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setStoreBirthday(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    .line 5227
    :cond_9
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasSyncProblemDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5228
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getSyncProblemDetected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setSyncProblemDetected(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5238
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 5239
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 5243
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5244
    :sswitch_0
    return-object p0

    .line 5249
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setShare(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    goto :goto_0

    .line 5253
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setProtocolVersion(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    goto :goto_0

    .line 5257
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 5258
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;->valueOf(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    move-result-object v3

    .line 5259
    .local v3, value:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;
    if-eqz v3, :cond_0

    .line 5260
    invoke-virtual {p0, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setMessageContents(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    goto :goto_0

    .line 5265
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;
    :sswitch_4
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v1

    .line 5266
    .local v1, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->hasCommit()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5267
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    .line 5269
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5270
    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setCommit(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    goto :goto_0

    .line 5274
    .end local v1           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    :sswitch_5
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v1

    .line 5275
    .local v1, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->hasGetUpdates()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5276
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    .line 5278
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5279
    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setGetUpdates(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    goto :goto_0

    .line 5283
    .end local v1           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;
    :sswitch_6
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v1

    .line 5284
    .local v1, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->hasAuthenticate()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5285
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    .line 5287
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5288
    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setAuthenticate(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    goto :goto_0

    .line 5292
    .end local v1           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setStoreBirthday(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    goto/16 :goto_0

    .line 5296
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setSyncProblemDetected(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    goto/16 :goto_0

    .line 5300
    :sswitch_9
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    move-result-object v1

    .line 5301
    .local v1, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->hasClearUserData()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5302
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->getClearUserData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;

    .line 5304
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5305
    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->setClearUserData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    goto/16 :goto_0

    .line 5239
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
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
    .line 5137
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5137
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

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
    .line 5137
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeGetUpdates(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5431
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasGetUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5433
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    .line 5438
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasGetUpdates:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5439
    return-object p0

    .line 5436
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    goto :goto_0
.end method

.method public setAuthenticate(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5463
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasAuthenticate:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5464
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    .line 5465
    return-object p0
.end method

.method public setAuthenticate(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5455
    if-nez p1, :cond_0

    .line 5456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5458
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasAuthenticate:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5459
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    .line 5460
    return-object p0
.end method

.method public setClearUserData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5500
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasClearUserData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5501
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    .line 5502
    return-object p0
.end method

.method public setClearUserData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5492
    if-nez p1, :cond_0

    .line 5493
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5495
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasClearUserData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5496
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataMessage;

    .line 5497
    return-object p0
.end method

.method public setCommit(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5389
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasCommit:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5390
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    .line 5391
    return-object p0
.end method

.method public setCommit(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5381
    if-nez p1, :cond_0

    .line 5382
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5384
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasCommit:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5385
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    .line 5386
    return-object p0
.end method

.method public setGetUpdates(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5426
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasGetUpdates:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5427
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    .line 5428
    return-object p0
.end method

.method public setGetUpdates(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5418
    if-nez p1, :cond_0

    .line 5419
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5421
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasGetUpdates:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5422
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMessage;

    .line 5423
    return-object p0
.end method

.method public setMessageContents(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5360
    if-nez p1, :cond_0

    .line 5361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5363
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasMessageContents:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5364
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->messageContents_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Contents;

    .line 5365
    return-object p0
.end method

.method public setProtocolVersion(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5342
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasProtocolVersion:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5343
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->protocolVersion_:I
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;I)I

    .line 5344
    return-object p0
.end method

.method public setShare(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5321
    if-nez p1, :cond_0

    .line 5322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5324
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasShare:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5325
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->share_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$13302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 5326
    return-object p0
.end method

.method public setStoreBirthday(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5529
    if-nez p1, :cond_0

    .line 5530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5532
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasStoreBirthday:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5533
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->storeBirthday_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 5534
    return-object p0
.end method

.method public setSyncProblemDetected(Z)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5550
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->hasSyncProblemDetected:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5551
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->syncProblemDetected_:Z
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;->access$14902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerMessage;Z)Z

    .line 5552
    return-object p0
.end method
