.class public final Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$143400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$143500()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    return-object p0
.end method

.method public clearAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    return-object p0
.end method

.method public clearAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    return-object p0
.end method

.method public clearAddMessage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    return-object p0
.end method

.method public clearAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    return-object p0
.end method

.method public clearAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    return-object p0
.end method

.method public clearAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    return-object p0
.end method

.method public clearAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    return-object p0
.end method

.method public clearAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    return-object p0
.end method

.method public clearAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    return-object p0
.end method

.method public clearAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    return-object p0
.end method

.method public clearAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    return-object p0
.end method

.method public clearAddSound()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    return-object p0
.end method

.method public clearAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    return-object p0
.end method

.method public clearAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    return-object p0
.end method

.method public clearBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    return-object p0
.end method

.method public clearCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    return-object p0
.end method

.method public clearClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    return-object p0
.end method

.method public clearClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object p0
.end method

.method public clearClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    return-object p0
.end method

.method public clearDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    return-object p0
.end method

.method public clearDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    return-object p0
.end method

.method public clearDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object p0
.end method

.method public clearDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    return-object p0
.end method

.method public clearDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    return-object p0
.end method

.method public clearDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    return-object p0
.end method

.method public clearDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    return-object p0
.end method

.method public clearDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object p0
.end method

.method public clearDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    return-object p0
.end method

.method public clearDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    return-object p0
.end method

.method public clearDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    return-object p0
.end method

.method public clearEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    return-object p0
.end method

.method public clearGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    return-object p0
.end method

.method public clearGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    return-object p0
.end method

.method public clearGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    return-object p0
.end method

.method public clearLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object p0
.end method

.method public clearMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object p0
.end method

.method public clearProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    return-object p0
.end method

.method public clearRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    return-object p0
.end method

.method public clearRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object p0
.end method

.method public clearSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object p0
.end method

.method public clearSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    return-object p0
.end method

.method public clearSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    return-object p0
.end method

.method public clearSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    return-object p0
.end method

.method public clearSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    return-object p0
.end method

.method public clearSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    return-object p0
.end method

.method public clearSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    return-object p0
.end method

.method public clearSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    return-object p0
.end method

.method public clearType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->type_:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    return-object p0
.end method

.method public clearUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    return-object p0
.end method

.method public clearUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    return-object p0
.end method

.method public clearUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    return-object p0
.end method

.method public clearUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    return-object p0
.end method

.method public clearUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    return-object p0
.end method

.method public clearUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    return-object p0
.end method

.method public clearUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    return-object p0
.end method

.method public clearUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    return-object p0
.end method

.method public clearUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    return-object p0
.end method

.method public clearUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    return-object p0
.end method

.method public clearUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public getCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v0

    return-object v0
.end method

.method public getClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public getProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    return-object v0
.end method

.method public getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    return-object v0
.end method

.method public getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public hasAddAggregatePerson()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson()Z

    move-result v0

    return v0
.end method

.method public hasAddDeviceSetting()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting()Z

    move-result v0

    return v0
.end method

.method public hasAddFootprint()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint()Z

    move-result v0

    return v0
.end method

.method public hasAddMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage()Z

    move-result v0

    return v0
.end method

.method public hasAddMissedCall()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall()Z

    move-result v0

    return v0
.end method

.method public hasAddMyProfile()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile()Z

    move-result v0

    return v0
.end method

.method public hasAddPeopleGroup()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup()Z

    move-result v0

    return v0
.end method

.method public hasAddPeopleGroups()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups()Z

    move-result v0

    return v0
.end method

.method public hasAddPeopleToPeopleGroup()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup()Z

    move-result v0

    return v0
.end method

.method public hasAddRecommendAppsOnPhone()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone()Z

    move-result v0

    return v0
.end method

.method public hasAddRecommendCommentLike()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike()Z

    move-result v0

    return v0
.end method

.method public hasAddRecommendWishlist()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist()Z

    move-result v0

    return v0
.end method

.method public hasAddSound()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound()Z

    move-result v0

    return v0
.end method

.method public hasAddSyncItems()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems()Z

    move-result v0

    return v0
.end method

.method public hasAddWallpaper()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper()Z

    move-result v0

    return v0
.end method

.method public hasBeginFullMerge()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge()Z

    move-result v0

    return v0
.end method

.method public hasCheckForMessages()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages()Z

    move-result v0

    return v0
.end method

.method public hasClearAllMissedCalls()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls()Z

    move-result v0

    return v0
.end method

.method public hasClearMissedCalls()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls()Z

    move-result v0

    return v0
.end method

.method public hasClearMissedCallsByPhoneNumber()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasDeleteAggregatePerson()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson()Z

    move-result v0

    return v0
.end method

.method public hasDeleteAggregatePersonImage()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage()Z

    move-result v0

    return v0
.end method

.method public hasDeleteDeviceSetting()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting()Z

    move-result v0

    return v0
.end method

.method public hasDeleteFootprint()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint()Z

    move-result v0

    return v0
.end method

.method public hasDeleteMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage()Z

    move-result v0

    return v0
.end method

.method public hasDeletePeopleByAccountType()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType()Z

    move-result v0

    return v0
.end method

.method public hasDeletePeopleFromPeopleGroup()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup()Z

    move-result v0

    return v0
.end method

.method public hasDeletePeopleGroup()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup()Z

    move-result v0

    return v0
.end method

.method public hasDeleteRecommendAppsOnPhone()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone()Z

    move-result v0

    return v0
.end method

.method public hasDeleteRecommendCommentLike()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike()Z

    move-result v0

    return v0
.end method

.method public hasDeleteRecommendedWishlist()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist()Z

    move-result v0

    return v0
.end method

.method public hasEndFullMerge()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge()Z

    move-result v0

    return v0
.end method

.method public hasGetAggregatePersonImage()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage()Z

    move-result v0

    return v0
.end method

.method public hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z

    move-result v0

    return v0
.end method

.method public hasGetRecommendNewApplicationCommentsLikes()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes()Z

    move-result v0

    return v0
.end method

.method public hasLogRemoteError()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError()Z

    move-result v0

    return v0
.end method

.method public hasMessageQueueTestMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage()Z

    move-result v0

    return v0
.end method

.method public hasProcessSyncItems()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems()Z

    move-result v0

    return v0
.end method

.method public hasRequestForAdd()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd()Z

    move-result v0

    return v0
.end method

.method public hasRequestForUpdate()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate()Z

    move-result v0

    return v0
.end method

.method public hasSearchRecommendCommentLike()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike()Z

    move-result v0

    return v0
.end method

.method public hasSetAggregatePersonImage()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage()Z

    move-result v0

    return v0
.end method

.method public hasSetFootprintImage()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage()Z

    move-result v0

    return v0
.end method

.method public hasSetFootprintMemo()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo()Z

    move-result v0

    return v0
.end method

.method public hasSetMissedCallAsViewed()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed()Z

    move-result v0

    return v0
.end method

.method public hasSetMissedCallsAsViewed()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed()Z

    move-result v0

    return v0
.end method

.method public hasSetNewVoiceMailCount()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount()Z

    move-result v0

    return v0
.end method

.method public hasSetPersonImage()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasUpdateAggregatePerson()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson()Z

    move-result v0

    return v0
.end method

.method public hasUpdateDeviceSetting()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting()Z

    move-result v0

    return v0
.end method

.method public hasUpdateFootprint()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint()Z

    move-result v0

    return v0
.end method

.method public hasUpdateMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage()Z

    move-result v0

    return v0
.end method

.method public hasUpdateMyProfile()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile()Z

    move-result v0

    return v0
.end method

.method public hasUpdatePeopleGroup()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup()Z

    move-result v0

    return v0
.end method

.method public hasUpdateRecommendAppCommentLastViewDate()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate()Z

    move-result v0

    return v0
.end method

.method public hasUpdateRecommendAppLastViewDate()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate()Z

    move-result v0

    return v0
.end method

.method public hasUpdateRecommendAppsOnPhone()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone()Z

    move-result v0

    return v0
.end method

.method public hasUpdateRecommendCommentLike()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike()Z

    move-result v0

    return v0
.end method

.method public hasUpdateVirtualDevice()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAddAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    goto :goto_0
.end method

.method public mergeAddDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    goto :goto_0
.end method

.method public mergeAddFootprint(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    goto :goto_0
.end method

.method public mergeAddMessage(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    goto :goto_0
.end method

.method public mergeAddMissedCall(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    goto :goto_0
.end method

.method public mergeAddMyProfile(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    goto :goto_0
.end method

.method public mergeAddPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    goto :goto_0
.end method

.method public mergeAddPeopleGroups(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    goto :goto_0
.end method

.method public mergeAddPeopleToPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    goto :goto_0
.end method

.method public mergeAddRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    goto :goto_0
.end method

.method public mergeAddRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    goto :goto_0
.end method

.method public mergeAddRecommendWishlist(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    goto :goto_0
.end method

.method public mergeAddSound(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    goto :goto_0
.end method

.method public mergeAddSyncItems(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    goto :goto_0
.end method

.method public mergeAddWallpaper(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    goto :goto_0
.end method

.method public mergeBeginFullMerge(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    goto :goto_0
.end method

.method public mergeCheckForMessages(Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    goto :goto_0
.end method

.method public mergeClearAllMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    goto :goto_0
.end method

.method public mergeClearMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    goto :goto_0
.end method

.method public mergeClearMissedCallsByPhoneNumber(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    goto :goto_0
.end method

.method public mergeDeleteAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    goto :goto_0
.end method

.method public mergeDeleteAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    goto :goto_0
.end method

.method public mergeDeleteDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    goto :goto_0
.end method

.method public mergeDeleteFootprint(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    goto :goto_0
.end method

.method public mergeDeleteMessage(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    goto :goto_0
.end method

.method public mergeDeletePeopleByAccountType(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    goto :goto_0
.end method

.method public mergeDeletePeopleFromPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    goto :goto_0
.end method

.method public mergeDeletePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    goto :goto_0
.end method

.method public mergeDeleteRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    goto :goto_0
.end method

.method public mergeDeleteRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    goto :goto_0
.end method

.method public mergeDeleteRecommendedWishlist(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    goto :goto_0
.end method

.method public mergeEndFullMerge(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setType(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeGetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeletePeopleByAccountType(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSetPersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddFootprint(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateFootprint(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteFootprint(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSetFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSetFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddMessage(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateMessage(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_10
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteMessage(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_11
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddMyProfile(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_12
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateMyProfile(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_13
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_14
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddPeopleGroups(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_15
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdatePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_16
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddPeopleToPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_17
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeletePeopleFromPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_18
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeletePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_19
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_1a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddRecommendWishlist(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_1b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteRecommendedWishlist(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_1c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_1d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_1e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_1f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_20
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateRecommendAppLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_21
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateRecommendAppCommentLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_22
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_23
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSearchRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_24
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeGetRecommendNewApplicationCommentsLikes(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_25
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeGetMyAppsAndFriendsAppsRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_26
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddSound(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_27
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeLogRemoteError(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_28
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_29
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddSyncItems(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_2a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeProcessSyncItems(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_2b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeBeginFullMerge(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_2c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeRequestForAdd(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_2d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeRequestForUpdate(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_2e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeEndFullMerge(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_2f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeCheckForMessages(Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_30
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSetNewVoiceMailCount(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_31
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddMissedCall(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_32
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeClearMissedCallsByPhoneNumber(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_33
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeClearMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_34
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeClearAllMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_35
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSetMissedCallAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_36
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSetMissedCallsAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_37
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_38
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_39
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_3a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddWallpaper(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_3b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeMessageQueueTestMessage(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    :cond_3c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setType(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasRequestForAdd()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setRequestForAdd(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddMissedCall()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddMissedCall(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateRecommendCommentLike()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeletePeopleByAccountType()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    :cond_5
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeletePeopleByAccountType(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteDeviceSetting()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    :cond_6
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddPeopleToPeopleGroup()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    :cond_7
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddPeopleToPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddAggregatePerson()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    :cond_8
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_9
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeletePeopleFromPeopleGroup()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    :cond_9
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeletePeopleFromPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_a
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddWallpaper()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    :cond_a
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddWallpaper(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_b
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateMyProfile()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    :cond_b
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateMyProfile(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_c
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddDeviceSetting()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    :cond_c
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_d
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeletePeopleGroup()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    :cond_d
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeletePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_e
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateDeviceSetting()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    :cond_e
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_f
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdatePeopleGroup()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    :cond_f
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdatePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_10
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasCheckForMessages()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;

    :cond_10
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setCheckForMessages(Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_11
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddRecommendCommentLike()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    :cond_11
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_12
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateVirtualDevice()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    :cond_12
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_13
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteMessage()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    :cond_13
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteMessage(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_14
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddMessage()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    :cond_14
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddMessage(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_15
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddSound()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    :cond_15
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddSound(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_16
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSetAggregatePersonImage()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    :cond_16
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_17
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSetFootprintMemo()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    :cond_17
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSetFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_18
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSetFootprintImage()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    :cond_18
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSetFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_19
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasClearMissedCalls()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    :cond_19
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setClearMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_1a
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasLogRemoteError()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    :cond_1a
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setLogRemoteError(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_1b
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateRecommendAppCommentLastViewDate()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    :cond_1b
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateRecommendAppCommentLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_1c
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSetMissedCallAsViewed()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    :cond_1c
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSetMissedCallAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_1d
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSetPersonImage()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    :cond_1d
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSetPersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_1e
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    :cond_1e
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setGetMyAppsAndFriendsAppsRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_1f
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddRecommendAppsOnPhone()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    :cond_1f
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_20
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteAggregatePersonImage()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    :cond_20
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_21
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteRecommendAppsOnPhone()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    :cond_21
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_22
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSearchRecommendCommentLike()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    :cond_22
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSearchRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_23
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSetNewVoiceMailCount()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    :cond_23
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSetNewVoiceMailCount(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_24
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddPeopleGroups()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    :cond_24
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddPeopleGroups(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_25
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasMessageQueueTestMessage()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    :cond_25
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setMessageQueueTestMessage(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_26
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateRecommendAppsOnPhone()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    :cond_26
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_27
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteAggregatePerson()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    :cond_27
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_28
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateAggregatePerson()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    :cond_28
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_29
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteRecommendedWishlist()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    :cond_29
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteRecommendedWishlist(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_2a
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateMessage()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    :cond_2a
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateMessage(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_2b
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddRecommendWishlist()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    :cond_2b
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddRecommendWishlist(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_2c
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasBeginFullMerge()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    :cond_2c
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setBeginFullMerge(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_2d
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddPeopleGroup()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    :cond_2d
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_2e
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteRecommendCommentLike()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    :cond_2e
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_2f
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateRecommendAppLastViewDate()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    :cond_2f
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateRecommendAppLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_30
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasRequestForUpdate()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    :cond_30
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setRequestForUpdate(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_31
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteFootprint()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    :cond_31
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteFootprint(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_32
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasGetAggregatePersonImage()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    :cond_32
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setGetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_33
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddSyncItems()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    :cond_33
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddSyncItems(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_34
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasClearMissedCallsByPhoneNumber()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    :cond_34
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setClearMissedCallsByPhoneNumber(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_35
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddFootprint()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    :cond_35
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddFootprint(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_36
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasProcessSyncItems()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setProcessSyncItems(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_37
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSetMissedCallsAsViewed()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    :cond_37
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSetMissedCallsAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_38
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasGetRecommendNewApplicationCommentsLikes()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    :cond_38
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setGetRecommendNewApplicationCommentsLikes(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_39
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasEndFullMerge()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    :cond_39
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setEndFullMerge(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_3a
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateFootprint()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    :cond_3a
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateFootprint(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_3b
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddMyProfile()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    :cond_3b
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddMyProfile(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    :sswitch_3c
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasClearAllMissedCalls()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    :cond_3c
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setClearAllMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xba -> :sswitch_2
        0xea -> :sswitch_3
        0x142 -> :sswitch_4
        0x2d2 -> :sswitch_5
        0x38a -> :sswitch_6
        0x4c2 -> :sswitch_7
        0x50a -> :sswitch_8
        0x5f2 -> :sswitch_9
        0x7a2 -> :sswitch_a
        0x89a -> :sswitch_b
        0x9a2 -> :sswitch_c
        0xa3a -> :sswitch_d
        0xab2 -> :sswitch_e
        0xb92 -> :sswitch_f
        0xc0a -> :sswitch_10
        0xc32 -> :sswitch_11
        0x1012 -> :sswitch_12
        0x10c2 -> :sswitch_13
        0x1112 -> :sswitch_14
        0x1192 -> :sswitch_15
        0x14ea -> :sswitch_16
        0x15fa -> :sswitch_17
        0x1622 -> :sswitch_18
        0x173a -> :sswitch_19
        0x182a -> :sswitch_1a
        0x187a -> :sswitch_1b
        0x1a62 -> :sswitch_1c
        0x1e82 -> :sswitch_1d
        0x1eca -> :sswitch_1e
        0x2122 -> :sswitch_1f
        0x213a -> :sswitch_20
        0x22e2 -> :sswitch_21
        0x234a -> :sswitch_22
        0x23aa -> :sswitch_23
        0x249a -> :sswitch_24
        0x264a -> :sswitch_25
        0x275a -> :sswitch_26
        0x27ea -> :sswitch_27
        0x291a -> :sswitch_28
        0x298a -> :sswitch_29
        0x2b22 -> :sswitch_2a
        0x2b72 -> :sswitch_2b
        0x2c1a -> :sswitch_2c
        0x2d2a -> :sswitch_2d
        0x2e92 -> :sswitch_2e
        0x31ba -> :sswitch_2f
        0x31ea -> :sswitch_30
        0x3232 -> :sswitch_31
        0x3642 -> :sswitch_32
        0x36c2 -> :sswitch_33
        0x3732 -> :sswitch_34
        0x37c2 -> :sswitch_35
        0x37ca -> :sswitch_36
        0x381a -> :sswitch_37
        0x3912 -> :sswitch_38
        0x3aa2 -> :sswitch_39
        0x3c52 -> :sswitch_3a
        0x3d9a -> :sswitch_3b
        0x3fea -> :sswitch_3c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeGetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    goto :goto_0
.end method

.method public mergeGetMyAppsAndFriendsAppsRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    goto :goto_0
.end method

.method public mergeGetRecommendNewApplicationCommentsLikes(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    goto :goto_0
.end method

.method public mergeLogRemoteError(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    goto :goto_0
.end method

.method public mergeMessageQueueTestMessage(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    goto :goto_0
.end method

.method public mergeProcessSyncItems(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    goto :goto_0
.end method

.method public mergeRequestForAdd(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    goto :goto_0
.end method

.method public mergeRequestForUpdate(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    goto :goto_0
.end method

.method public mergeSearchRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    goto :goto_0
.end method

.method public mergeSetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    goto :goto_0
.end method

.method public mergeSetFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    goto :goto_0
.end method

.method public mergeSetFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    goto :goto_0
.end method

.method public mergeSetMissedCallAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    goto :goto_0
.end method

.method public mergeSetMissedCallsAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    goto :goto_0
.end method

.method public mergeSetNewVoiceMailCount(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    goto :goto_0
.end method

.method public mergeSetPersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    goto :goto_0
.end method

.method public mergeUpdateAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    goto :goto_0
.end method

.method public mergeUpdateDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    goto :goto_0
.end method

.method public mergeUpdateFootprint(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    goto :goto_0
.end method

.method public mergeUpdateMessage(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    goto :goto_0
.end method

.method public mergeUpdateMyProfile(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    goto :goto_0
.end method

.method public mergeUpdatePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    goto :goto_0
.end method

.method public mergeUpdateRecommendAppCommentLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    goto :goto_0
.end method

.method public mergeUpdateRecommendAppLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    goto :goto_0
.end method

.method public mergeUpdateRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    goto :goto_0
.end method

.method public mergeUpdateRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    goto :goto_0
.end method

.method public mergeUpdateVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    goto :goto_0
.end method

.method public setAddAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    return-object p0
.end method

.method public setAddAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    return-object p0
.end method

.method public setAddDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    return-object p0
.end method

.method public setAddDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    return-object p0
.end method

.method public setAddFootprint(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    return-object p0
.end method

.method public setAddFootprint(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    return-object p0
.end method

.method public setAddMessage(Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    return-object p0
.end method

.method public setAddMessage(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    return-object p0
.end method

.method public setAddMissedCall(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    return-object p0
.end method

.method public setAddMissedCall(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    return-object p0
.end method

.method public setAddMyProfile(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    return-object p0
.end method

.method public setAddMyProfile(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    return-object p0
.end method

.method public setAddPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    return-object p0
.end method

.method public setAddPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    return-object p0
.end method

.method public setAddPeopleGroups(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    return-object p0
.end method

.method public setAddPeopleGroups(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    return-object p0
.end method

.method public setAddPeopleToPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    return-object p0
.end method

.method public setAddPeopleToPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    return-object p0
.end method

.method public setAddRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    return-object p0
.end method

.method public setAddRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    return-object p0
.end method

.method public setAddRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    return-object p0
.end method

.method public setAddRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    return-object p0
.end method

.method public setAddRecommendWishlist(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    return-object p0
.end method

.method public setAddRecommendWishlist(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    return-object p0
.end method

.method public setAddSound(Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    return-object p0
.end method

.method public setAddSound(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    return-object p0
.end method

.method public setAddSyncItems(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    return-object p0
.end method

.method public setAddSyncItems(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    return-object p0
.end method

.method public setAddWallpaper(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    return-object p0
.end method

.method public setAddWallpaper(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    return-object p0
.end method

.method public setBeginFullMerge(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    return-object p0
.end method

.method public setBeginFullMerge(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    return-object p0
.end method

.method public setCheckForMessages(Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    return-object p0
.end method

.method public setCheckForMessages(Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    return-object p0
.end method

.method public setClearAllMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    return-object p0
.end method

.method public setClearAllMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    return-object p0
.end method

.method public setClearMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object p0
.end method

.method public setClearMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object p0
.end method

.method public setClearMissedCallsByPhoneNumber(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    return-object p0
.end method

.method public setClearMissedCallsByPhoneNumber(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    return-object p0
.end method

.method public setDeleteAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    return-object p0
.end method

.method public setDeleteAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    return-object p0
.end method

.method public setDeleteAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    return-object p0
.end method

.method public setDeleteAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    return-object p0
.end method

.method public setDeleteDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object p0
.end method

.method public setDeleteDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object p0
.end method

.method public setDeleteFootprint(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    return-object p0
.end method

.method public setDeleteFootprint(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    return-object p0
.end method

.method public setDeleteMessage(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    return-object p0
.end method

.method public setDeleteMessage(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    return-object p0
.end method

.method public setDeletePeopleByAccountType(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    return-object p0
.end method

.method public setDeletePeopleByAccountType(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    return-object p0
.end method

.method public setDeletePeopleFromPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    return-object p0
.end method

.method public setDeletePeopleFromPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    return-object p0
.end method

.method public setDeletePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object p0
.end method

.method public setDeletePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object p0
.end method

.method public setDeleteRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    return-object p0
.end method

.method public setDeleteRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    return-object p0
.end method

.method public setDeleteRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    return-object p0
.end method

.method public setDeleteRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    return-object p0
.end method

.method public setDeleteRecommendedWishlist(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    return-object p0
.end method

.method public setDeleteRecommendedWishlist(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    return-object p0
.end method

.method public setEndFullMerge(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    return-object p0
.end method

.method public setEndFullMerge(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    return-object p0
.end method

.method public setGetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    return-object p0
.end method

.method public setGetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    return-object p0
.end method

.method public setGetMyAppsAndFriendsAppsRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    return-object p0
.end method

.method public setGetMyAppsAndFriendsAppsRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    return-object p0
.end method

.method public setGetRecommendNewApplicationCommentsLikes(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    return-object p0
.end method

.method public setGetRecommendNewApplicationCommentsLikes(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    return-object p0
.end method

.method public setLogRemoteError(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object p0
.end method

.method public setLogRemoteError(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object p0
.end method

.method public setMessageQueueTestMessage(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object p0
.end method

.method public setMessageQueueTestMessage(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object p0
.end method

.method public setProcessSyncItems(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    return-object p0
.end method

.method public setProcessSyncItems(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    return-object p0
.end method

.method public setRequestForAdd(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    return-object p0
.end method

.method public setRequestForAdd(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    return-object p0
.end method

.method public setRequestForUpdate(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object p0
.end method

.method public setRequestForUpdate(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object p0
.end method

.method public setSearchRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object p0
.end method

.method public setSearchRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object p0
.end method

.method public setSetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    return-object p0
.end method

.method public setSetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    return-object p0
.end method

.method public setSetFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    return-object p0
.end method

.method public setSetFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    return-object p0
.end method

.method public setSetFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    return-object p0
.end method

.method public setSetFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    return-object p0
.end method

.method public setSetMissedCallAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    return-object p0
.end method

.method public setSetMissedCallAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    return-object p0
.end method

.method public setSetMissedCallsAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    return-object p0
.end method

.method public setSetMissedCallsAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    return-object p0
.end method

.method public setSetNewVoiceMailCount(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    return-object p0
.end method

.method public setSetNewVoiceMailCount(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    return-object p0
.end method

.method public setSetPersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    return-object p0
.end method

.method public setSetPersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    return-object p0
.end method

.method public setType(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->type_:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    return-object p0
.end method

.method public setUpdateAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    return-object p0
.end method

.method public setUpdateAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    return-object p0
.end method

.method public setUpdateDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    return-object p0
.end method

.method public setUpdateDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    return-object p0
.end method

.method public setUpdateFootprint(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    return-object p0
.end method

.method public setUpdateFootprint(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    return-object p0
.end method

.method public setUpdateMessage(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    return-object p0
.end method

.method public setUpdateMessage(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    return-object p0
.end method

.method public setUpdateMyProfile(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    return-object p0
.end method

.method public setUpdateMyProfile(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    return-object p0
.end method

.method public setUpdatePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    return-object p0
.end method

.method public setUpdatePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    return-object p0
.end method

.method public setUpdateRecommendAppCommentLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    return-object p0
.end method

.method public setUpdateRecommendAppCommentLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    return-object p0
.end method

.method public setUpdateRecommendAppLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    return-object p0
.end method

.method public setUpdateRecommendAppLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    return-object p0
.end method

.method public setUpdateRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    return-object p0
.end method

.method public setUpdateRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    return-object p0
.end method

.method public setUpdateRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    return-object p0
.end method

.method public setUpdateRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    return-object p0
.end method

.method public setUpdateVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object p0
.end method

.method public setUpdateVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object p0
.end method
