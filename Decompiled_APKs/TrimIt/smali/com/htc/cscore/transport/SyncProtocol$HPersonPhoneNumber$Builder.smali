.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28967
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$82900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28962
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$83000()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 1

    .prologue
    .line 28962
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29013
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29014
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 29017
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 3

    .prologue
    .line 28970
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;-><init>()V

    .line 28971
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    .line 28972
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1

    .prologue
    .line 29005
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29006
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 29008
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 3

    .prologue
    .line 29021
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    if-nez v1, :cond_0

    .line 29022
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29025
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    .line 29026
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    .line 29027
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 28980
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    if-nez v0, :cond_0

    .line 28981
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28984
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    .line 28985
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCanonicalPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 3

    .prologue
    .line 29149
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasCanonicalPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83202(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29150
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->canonicalPhoneNumber_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83302(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;J)J

    .line 29151
    return-object p0
.end method

.method public clearDisplayPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 29170
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasDisplayPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83402(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29171
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->displayPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83502(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    .line 29172
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 29207
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83602(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29208
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83702(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29209
    return-object p0
.end method

.method public clearPersonId()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 29244
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83802(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29245
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83902(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29246
    return-object p0
.end method

.method public clearPhoneNumberType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 29265
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPhoneNumberType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84002(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29266
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;->PhoneMobile:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->phoneNumberType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84102(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    .line 29267
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29283
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84202(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29284
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84302(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;I)I

    .line 29285
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 3

    .prologue
    .line 29301
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84402(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29302
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84502(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;J)J

    .line 29303
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2

    .prologue
    .line 28989
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

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
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalPhoneNumber()J
    .locals 2

    .prologue
    .line 29141
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getCanonicalPhoneNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1

    .prologue
    .line 28998
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 28994
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29159
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 29180
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 29217
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumberType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;
    .locals 1

    .prologue
    .line 29254
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPhoneNumberType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 29275
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 29293
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCanonicalPhoneNumber()Z
    .locals 1

    .prologue
    .line 29138
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasCanonicalPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasDisplayPhoneNumber()Z
    .locals 1

    .prologue
    .line 29156
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasDisplayPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 29177
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 29214
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNumberType()Z
    .locals 1

    .prologue
    .line 29251
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPhoneNumberType()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 29272
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 29290
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1

    .prologue
    .line 28976
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 28962
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 29002
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 29040
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 29063
    :goto_0
    return-object p0

    .line 29041
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasCanonicalPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29042
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getCanonicalPhoneNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    .line 29044
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasDisplayPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29045
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    .line 29047
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29048
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    .line 29050
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29051
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    .line 29053
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPhoneNumberType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29054
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPhoneNumberType()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setPhoneNumberType(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    .line 29056
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29057
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    .line 29059
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29060
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    .line 29062
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29070
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 29074
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 29075
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 29080
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 29082
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 29083
    :goto_1
    return-object p0

    .line 29077
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 29088
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    goto :goto_0

    .line 29092
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    goto :goto_0

    .line 29096
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 29097
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->hasPersonId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 29098
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 29100
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 29101
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    goto :goto_0

    .line 29105
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    goto :goto_0

    .line 29109
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 29110
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 29111
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 29113
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 29114
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    goto :goto_0

    .line 29118
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    goto :goto_0

    .line 29122
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 29123
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    move-result-object v4

    .line 29124
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;
    if-nez v4, :cond_3

    .line 29125
    const/16 v5, 0x609

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 29127
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->setPhoneNumberType(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    goto/16 :goto_0

    .line 29075
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1f5a -> :sswitch_2
        0x2512 -> :sswitch_3
        0x2640 -> :sswitch_4
        0x2892 -> :sswitch_5
        0x2eb0 -> :sswitch_6
        0x3048 -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 29031
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    if-eqz v0, :cond_0

    .line 29032
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object p0

    .line 29035
    .end local p0
    :goto_0
    return-object p0

    .line 29034
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
    .line 28962
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28962
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

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
    .line 28962
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

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
    .line 28962
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28962
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

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
    .line 28962
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29196
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83700(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 29198
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83700(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83702(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29203
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83602(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29204
    return-object p0

    .line 29201
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83702(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29233
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 29235
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83900(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83902(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29240
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83802(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29241
    return-object p0

    .line 29238
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83902(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29144
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasCanonicalPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83202(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29145
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->canonicalPhoneNumber_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83302(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;J)J

    .line 29146
    return-object p0
.end method

.method public setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29162
    if-nez p1, :cond_0

    .line 29163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29165
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasDisplayPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83402(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29166
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->displayPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83502(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    .line 29167
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 29191
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83602(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29192
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83702(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29193
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29183
    if-nez p1, :cond_0

    .line 29184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29186
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83602(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29187
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83702(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29188
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 29228
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83802(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29229
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83902(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29230
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29220
    if-nez p1, :cond_0

    .line 29221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29223
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83802(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29224
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$83902(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 29225
    return-object p0
.end method

.method public setPhoneNumberType(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29257
    if-nez p1, :cond_0

    .line 29258
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29260
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPhoneNumberType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84002(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29261
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->phoneNumberType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84102(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$HPersonPhoneNumberType;

    .line 29262
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29278
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84202(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29279
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84302(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;I)I

    .line 29280
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 29296
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84402(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;Z)Z

    .line 29297
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->access$84502(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;J)J

    .line 29298
    return-object p0
.end method
