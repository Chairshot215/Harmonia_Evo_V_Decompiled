.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$61200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$61300()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCanonicalPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasCanonicalPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->canonicalPhoneNumber_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;J)J

    return-object p0
.end method

.method public clearDisplayPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasDisplayPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->displayPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearPhoneNumberType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPhoneNumberType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->phoneNumberType_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;I)I

    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;I)I

    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;J)J

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalPhoneNumber()J
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getCanonicalPhoneNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumberType()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getPhoneNumberType()I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCanonicalPhoneNumber()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasCanonicalPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasDisplayPhoneNumber()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasDisplayPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNumberType()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPhoneNumberType()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasCanonicalPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getCanonicalPhoneNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasDisplayPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPhoneNumberType()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getPhoneNumberType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setPhoneNumberType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->hasMyProfileId()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->setPhoneNumberType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1f5a -> :sswitch_2
        0x2640 -> :sswitch_3
        0x2892 -> :sswitch_4
        0x2d3a -> :sswitch_5
        0x2eb0 -> :sswitch_6
        0x3048 -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasCanonicalPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->canonicalPhoneNumber_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;J)J

    return-object p0
.end method

.method public setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasDisplayPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->displayPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$61902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setPhoneNumberType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPhoneNumberType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->phoneNumberType_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;I)I

    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;I)I

    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->access$62802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;J)J

    return-object p0
.end method
