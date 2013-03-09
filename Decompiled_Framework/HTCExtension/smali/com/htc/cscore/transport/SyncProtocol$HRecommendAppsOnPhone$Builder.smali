.class public final Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$90400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$90500()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$90702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$90802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearAppType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$90902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearAppURL()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppURL:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppURL()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appURL_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearRecommendedApplicationIcon()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$92002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;J)J

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedApplicationIcon()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getRecommendedApplicationIcon()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAppId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppType()Z

    move-result v0

    return v0
.end method

.method public hasAppURL()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppURL()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasRecommendedApplicationIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppURL()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setAppURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasName()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getRecommendedApplicationIcon()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeRecommendedApplicationIcon(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->hasRecommendedApplicationIcon()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->getRecommendedApplicationIcon()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setRecommendedApplicationIcon(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setAppURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1088 -> :sswitch_2
        0x1242 -> :sswitch_3
        0x161a -> :sswitch_4
        0x1c4a -> :sswitch_5
        0x2892 -> :sswitch_6
        0x3afa -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeRecommendedApplicationIcon(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91800(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91800(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$90702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$90802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$90902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setAppURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppURL:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appURL_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setRecommendedApplicationIcon(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    return-object p0
.end method

.method public setRecommendedApplicationIcon(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$91902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->access$92002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;J)J

    return-object p0
.end method
