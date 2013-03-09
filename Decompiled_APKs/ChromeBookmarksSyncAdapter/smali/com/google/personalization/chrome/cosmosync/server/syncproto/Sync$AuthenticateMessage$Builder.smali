.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4291
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11900()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    .locals 1

    .prologue
    .line 4285
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    .locals 3

    .prologue
    .line 4294
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;-><init>()V

    .line 4295
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    .line 4296
    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    .locals 1

    .prologue
    .line 4324
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4325
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4327
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4285
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    .locals 3

    .prologue
    .line 4340
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    if-nez v1, :cond_0

    .line 4341
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4344
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    .line 4345
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    .line 4346
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    .locals 2

    .prologue
    .line 4313
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4285
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4285
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

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
    .line 4285
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;
    .locals 1

    .prologue
    .line 4317
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4285
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4321
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 4350
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4354
    :cond_0
    :goto_0
    return-object p0

    .line 4351
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->hasAuthToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4352
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->setAuthToken(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4362
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4363
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4367
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4368
    :sswitch_0
    return-object p0

    .line 4373
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->setAuthToken(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    goto :goto_0

    .line 4363
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
    .line 4285
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4285
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

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
    .line 4285
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4389
    if-nez p1, :cond_0

    .line 4390
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4392
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->hasAuthToken:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->access$12102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;Z)Z

    .line 4393
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->authToken_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;->access$12202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 4394
    return-object p0
.end method
