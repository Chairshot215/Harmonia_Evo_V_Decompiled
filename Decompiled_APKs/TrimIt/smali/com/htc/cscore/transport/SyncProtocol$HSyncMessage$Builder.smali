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

    .prologue
    .line 50984
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$143400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 50979
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$143500()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 1

    .prologue
    .line 50979
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

    .prologue
    .line 51030
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51031
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 51034
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 3

    .prologue
    .line 50987
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;-><init>()V

    .line 50988
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    .line 50989
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1

    .prologue
    .line 51022
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51023
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 51025
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 3

    .prologue
    .line 51038
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    if-nez v1, :cond_0

    .line 51039
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51042
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    .line 51043
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    .line 51044
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 50997
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    if-nez v0, :cond_0

    .line 50998
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51001
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    .line 51002
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 51862
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51863
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    .line 51864
    return-object p0
.end method

.method public clearAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53860
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53861
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    .line 53862
    return-object p0
.end method

.method public clearAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52158
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52159
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    .line 52160
    return-object p0
.end method

.method public clearAddMessage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52343
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52344
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    .line 52345
    return-object p0
.end method

.method public clearAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53638
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53639
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .line 53640
    return-object p0
.end method

.method public clearAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52454
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52455
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    .line 52456
    return-object p0
.end method

.method public clearAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52528
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52529
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    .line 52530
    return-object p0
.end method

.method public clearAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52565
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52566
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    .line 52567
    return-object p0
.end method

.method public clearAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52639
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52640
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    .line 52641
    return-object p0
.end method

.method public clearAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52861
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52862
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    .line 52863
    return-object p0
.end method

.method public clearAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52750
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52751
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    .line 52752
    return-object p0
.end method

.method public clearAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52787
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52788
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .line 52789
    return-object p0
.end method

.method public clearAddSound()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53231
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53232
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    .line 53233
    return-object p0
.end method

.method public clearAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53342
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53343
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    .line 53344
    return-object p0
.end method

.method public clearAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53971
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53972
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    .line 53973
    return-object p0
.end method

.method public clearBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53416
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53417
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    .line 53418
    return-object p0
.end method

.method public clearCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53564
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53565
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    .line 53566
    return-object p0
.end method

.method public clearClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53749
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53750
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    .line 53751
    return-object p0
.end method

.method public clearClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53712
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53713
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    .line 53714
    return-object p0
.end method

.method public clearClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53675
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53676
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    .line 53677
    return-object p0
.end method

.method public clearDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 51936
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51937
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    .line 51938
    return-object p0
.end method

.method public clearDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52047
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52048
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    .line 52049
    return-object p0
.end method

.method public clearDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53934
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53935
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    .line 53936
    return-object p0
.end method

.method public clearDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52232
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52233
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    .line 52234
    return-object p0
.end method

.method public clearDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52417
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52418
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    .line 52419
    return-object p0
.end method

.method public clearDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52084
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52085
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .line 52086
    return-object p0
.end method

.method public clearDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52676
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52677
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    .line 52678
    return-object p0
.end method

.method public clearDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52713
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52714
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .line 52715
    return-object p0
.end method

.method public clearDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52898
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52899
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    .line 52900
    return-object p0
.end method

.method public clearDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53083
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53084
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .line 53085
    return-object p0
.end method

.method public clearDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52824
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52825
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    .line 52826
    return-object p0
.end method

.method public clearEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53527
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53528
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    .line 53529
    return-object p0
.end method

.method public clearGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 51973
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51974
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    .line 51975
    return-object p0
.end method

.method public clearGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53194
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53195
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    .line 53196
    return-object p0
.end method

.method public clearGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53157
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53158
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    .line 53159
    return-object p0
.end method

.method public clearLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53268
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53269
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    .line 53270
    return-object p0
.end method

.method public clearMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 54008
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 54009
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    .line 54010
    return-object p0
.end method

.method public clearProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53379
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53380
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    .line 53381
    return-object p0
.end method

.method public clearRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53453
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53454
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    .line 53455
    return-object p0
.end method

.method public clearRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53490
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53491
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    .line 53492
    return-object p0
.end method

.method public clearSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53120
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53121
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .line 53122
    return-object p0
.end method

.method public clearSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52010
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52011
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    .line 52012
    return-object p0
.end method

.method public clearSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52269
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52270
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    .line 52271
    return-object p0
.end method

.method public clearSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52306
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52307
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .line 52308
    return-object p0
.end method

.method public clearSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53786
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53787
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    .line 53788
    return-object p0
.end method

.method public clearSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53823
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53824
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    .line 53825
    return-object p0
.end method

.method public clearSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53601
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53602
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    .line 53603
    return-object p0
.end method

.method public clearSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52121
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52122
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    .line 52123
    return-object p0
.end method

.method public clearType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 51825
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51826
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->type_:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 51827
    return-object p0
.end method

.method public clearUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 51899
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51900
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    .line 51901
    return-object p0
.end method

.method public clearUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53897
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53898
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    .line 53899
    return-object p0
.end method

.method public clearUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52195
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52196
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    .line 52197
    return-object p0
.end method

.method public clearUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52380
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52381
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    .line 52382
    return-object p0
.end method

.method public clearUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52491
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52492
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    .line 52493
    return-object p0
.end method

.method public clearUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52602
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52603
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    .line 52604
    return-object p0
.end method

.method public clearUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53046
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53047
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    .line 53048
    return-object p0
.end method

.method public clearUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53009
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53010
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    .line 53011
    return-object p0
.end method

.method public clearUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52972
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52973
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    .line 52974
    return-object p0
.end method

.method public clearUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 52935
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52936
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    .line 52937
    return-object p0
.end method

.method public clearUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 53305
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53306
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    .line 53307
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2

    .prologue
    .line 51006
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 50979
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

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1

    .prologue
    .line 51835
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1

    .prologue
    .line 53833
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1

    .prologue
    .line 52131
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1

    .prologue
    .line 52316
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    return-object v0
.end method

.method public getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1

    .prologue
    .line 53611
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1

    .prologue
    .line 52427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1

    .prologue
    .line 52501
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1

    .prologue
    .line 52538
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1

    .prologue
    .line 52612
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 52834
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1

    .prologue
    .line 52723
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1

    .prologue
    .line 52760
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1

    .prologue
    .line 53204
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    return-object v0
.end method

.method public getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    .locals 1

    .prologue
    .line 53315
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1

    .prologue
    .line 53944
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    return-object v0
.end method

.method public getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    .locals 1

    .prologue
    .line 53389
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public getCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    .locals 1

    .prologue
    .line 53537
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v0

    return-object v0
.end method

.method public getClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1

    .prologue
    .line 53722
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1

    .prologue
    .line 53685
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    return-object v0
.end method

.method public getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1

    .prologue
    .line 53648
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1

    .prologue
    .line 51015
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1

    .prologue
    .line 51909
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1

    .prologue
    .line 52020
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1

    .prologue
    .line 53907
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1

    .prologue
    .line 52205
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1

    .prologue
    .line 52390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1

    .prologue
    .line 52057
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1

    .prologue
    .line 52649
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    .prologue
    .line 52686
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 52871
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1

    .prologue
    .line 53056
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1

    .prologue
    .line 52797
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 51011
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1

    .prologue
    .line 53500
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1

    .prologue
    .line 51946
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1

    .prologue
    .line 53167
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1

    .prologue
    .line 53130
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    return-object v0
.end method

.method public getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1

    .prologue
    .line 53241
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1

    .prologue
    .line 53981
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public getProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    .locals 1

    .prologue
    .line 53352
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    return-object v0
.end method

.method public getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    .locals 1

    .prologue
    .line 53426
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    return-object v0
.end method

.method public getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1

    .prologue
    .line 53463
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    .prologue
    .line 53093
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1

    .prologue
    .line 51983
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1

    .prologue
    .line 52242
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1

    .prologue
    .line 52279
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    .locals 1

    .prologue
    .line 53759
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 1

    .prologue
    .line 53796
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    .locals 1

    .prologue
    .line 53574
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    return-object v0
.end method

.method public getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1

    .prologue
    .line 52094
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    .locals 1

    .prologue
    .line 51814
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1

    .prologue
    .line 51872
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1

    .prologue
    .line 53870
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1

    .prologue
    .line 52168
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1

    .prologue
    .line 52353
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1

    .prologue
    .line 52464
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1

    .prologue
    .line 52575
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1

    .prologue
    .line 53019
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1

    .prologue
    .line 52982
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 52945
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1

    .prologue
    .line 52908
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1

    .prologue
    .line 53278
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public hasAddAggregatePerson()Z
    .locals 1

    .prologue
    .line 51832
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson()Z

    move-result v0

    return v0
.end method

.method public hasAddDeviceSetting()Z
    .locals 1

    .prologue
    .line 53830
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting()Z

    move-result v0

    return v0
.end method

.method public hasAddFootprint()Z
    .locals 1

    .prologue
    .line 52128
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint()Z

    move-result v0

    return v0
.end method

.method public hasAddMessage()Z
    .locals 1

    .prologue
    .line 52313
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage()Z

    move-result v0

    return v0
.end method

.method public hasAddMissedCall()Z
    .locals 1

    .prologue
    .line 53608
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall()Z

    move-result v0

    return v0
.end method

.method public hasAddMyProfile()Z
    .locals 1

    .prologue
    .line 52424
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile()Z

    move-result v0

    return v0
.end method

.method public hasAddPeopleGroup()Z
    .locals 1

    .prologue
    .line 52498
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup()Z

    move-result v0

    return v0
.end method

.method public hasAddPeopleGroups()Z
    .locals 1

    .prologue
    .line 52535
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups()Z

    move-result v0

    return v0
.end method

.method public hasAddPeopleToPeopleGroup()Z
    .locals 1

    .prologue
    .line 52609
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup()Z

    move-result v0

    return v0
.end method

.method public hasAddRecommendAppsOnPhone()Z
    .locals 1

    .prologue
    .line 52831
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone()Z

    move-result v0

    return v0
.end method

.method public hasAddRecommendCommentLike()Z
    .locals 1

    .prologue
    .line 52720
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike()Z

    move-result v0

    return v0
.end method

.method public hasAddRecommendWishlist()Z
    .locals 1

    .prologue
    .line 52757
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist()Z

    move-result v0

    return v0
.end method

.method public hasAddSound()Z
    .locals 1

    .prologue
    .line 53201
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound()Z

    move-result v0

    return v0
.end method

.method public hasAddSyncItems()Z
    .locals 1

    .prologue
    .line 53312
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems()Z

    move-result v0

    return v0
.end method

.method public hasAddWallpaper()Z
    .locals 1

    .prologue
    .line 53941
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper()Z

    move-result v0

    return v0
.end method

.method public hasBeginFullMerge()Z
    .locals 1

    .prologue
    .line 53386
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge()Z

    move-result v0

    return v0
.end method

.method public hasCheckForMessages()Z
    .locals 1

    .prologue
    .line 53534
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages()Z

    move-result v0

    return v0
.end method

.method public hasClearAllMissedCalls()Z
    .locals 1

    .prologue
    .line 53719
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls()Z

    move-result v0

    return v0
.end method

.method public hasClearMissedCalls()Z
    .locals 1

    .prologue
    .line 53682
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls()Z

    move-result v0

    return v0
.end method

.method public hasClearMissedCallsByPhoneNumber()Z
    .locals 1

    .prologue
    .line 53645
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasDeleteAggregatePerson()Z
    .locals 1

    .prologue
    .line 51906
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson()Z

    move-result v0

    return v0
.end method

.method public hasDeleteAggregatePersonImage()Z
    .locals 1

    .prologue
    .line 52017
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage()Z

    move-result v0

    return v0
.end method

.method public hasDeleteDeviceSetting()Z
    .locals 1

    .prologue
    .line 53904
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting()Z

    move-result v0

    return v0
.end method

.method public hasDeleteFootprint()Z
    .locals 1

    .prologue
    .line 52202
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint()Z

    move-result v0

    return v0
.end method

.method public hasDeleteMessage()Z
    .locals 1

    .prologue
    .line 52387
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage()Z

    move-result v0

    return v0
.end method

.method public hasDeletePeopleByAccountType()Z
    .locals 1

    .prologue
    .line 52054
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType()Z

    move-result v0

    return v0
.end method

.method public hasDeletePeopleFromPeopleGroup()Z
    .locals 1

    .prologue
    .line 52646
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup()Z

    move-result v0

    return v0
.end method

.method public hasDeletePeopleGroup()Z
    .locals 1

    .prologue
    .line 52683
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup()Z

    move-result v0

    return v0
.end method

.method public hasDeleteRecommendAppsOnPhone()Z
    .locals 1

    .prologue
    .line 52868
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone()Z

    move-result v0

    return v0
.end method

.method public hasDeleteRecommendCommentLike()Z
    .locals 1

    .prologue
    .line 53053
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike()Z

    move-result v0

    return v0
.end method

.method public hasDeleteRecommendedWishlist()Z
    .locals 1

    .prologue
    .line 52794
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist()Z

    move-result v0

    return v0
.end method

.method public hasEndFullMerge()Z
    .locals 1

    .prologue
    .line 53497
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge()Z

    move-result v0

    return v0
.end method

.method public hasGetAggregatePersonImage()Z
    .locals 1

    .prologue
    .line 51943
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage()Z

    move-result v0

    return v0
.end method

.method public hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z
    .locals 1

    .prologue
    .line 53164
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z

    move-result v0

    return v0
.end method

.method public hasGetRecommendNewApplicationCommentsLikes()Z
    .locals 1

    .prologue
    .line 53127
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes()Z

    move-result v0

    return v0
.end method

.method public hasLogRemoteError()Z
    .locals 1

    .prologue
    .line 53238
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError()Z

    move-result v0

    return v0
.end method

.method public hasMessageQueueTestMessage()Z
    .locals 1

    .prologue
    .line 53978
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage()Z

    move-result v0

    return v0
.end method

.method public hasProcessSyncItems()Z
    .locals 1

    .prologue
    .line 53349
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems()Z

    move-result v0

    return v0
.end method

.method public hasRequestForAdd()Z
    .locals 1

    .prologue
    .line 53423
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd()Z

    move-result v0

    return v0
.end method

.method public hasRequestForUpdate()Z
    .locals 1

    .prologue
    .line 53460
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate()Z

    move-result v0

    return v0
.end method

.method public hasSearchRecommendCommentLike()Z
    .locals 1

    .prologue
    .line 53090
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike()Z

    move-result v0

    return v0
.end method

.method public hasSetAggregatePersonImage()Z
    .locals 1

    .prologue
    .line 51980
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage()Z

    move-result v0

    return v0
.end method

.method public hasSetFootprintImage()Z
    .locals 1

    .prologue
    .line 52239
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage()Z

    move-result v0

    return v0
.end method

.method public hasSetFootprintMemo()Z
    .locals 1

    .prologue
    .line 52276
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo()Z

    move-result v0

    return v0
.end method

.method public hasSetMissedCallAsViewed()Z
    .locals 1

    .prologue
    .line 53756
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed()Z

    move-result v0

    return v0
.end method

.method public hasSetMissedCallsAsViewed()Z
    .locals 1

    .prologue
    .line 53793
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed()Z

    move-result v0

    return v0
.end method

.method public hasSetNewVoiceMailCount()Z
    .locals 1

    .prologue
    .line 53571
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount()Z

    move-result v0

    return v0
.end method

.method public hasSetPersonImage()Z
    .locals 1

    .prologue
    .line 52091
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 51811
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasUpdateAggregatePerson()Z
    .locals 1

    .prologue
    .line 51869
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson()Z

    move-result v0

    return v0
.end method

.method public hasUpdateDeviceSetting()Z
    .locals 1

    .prologue
    .line 53867
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting()Z

    move-result v0

    return v0
.end method

.method public hasUpdateFootprint()Z
    .locals 1

    .prologue
    .line 52165
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint()Z

    move-result v0

    return v0
.end method

.method public hasUpdateMessage()Z
    .locals 1

    .prologue
    .line 52350
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage()Z

    move-result v0

    return v0
.end method

.method public hasUpdateMyProfile()Z
    .locals 1

    .prologue
    .line 52461
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile()Z

    move-result v0

    return v0
.end method

.method public hasUpdatePeopleGroup()Z
    .locals 1

    .prologue
    .line 52572
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup()Z

    move-result v0

    return v0
.end method

.method public hasUpdateRecommendAppCommentLastViewDate()Z
    .locals 1

    .prologue
    .line 53016
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate()Z

    move-result v0

    return v0
.end method

.method public hasUpdateRecommendAppLastViewDate()Z
    .locals 1

    .prologue
    .line 52979
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate()Z

    move-result v0

    return v0
.end method

.method public hasUpdateRecommendAppsOnPhone()Z
    .locals 1

    .prologue
    .line 52942
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone()Z

    move-result v0

    return v0
.end method

.method public hasUpdateRecommendCommentLike()Z
    .locals 1

    .prologue
    .line 52905
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike()Z

    move-result v0

    return v0
.end method

.method public hasUpdateVirtualDevice()Z
    .locals 1

    .prologue
    .line 53275
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1

    .prologue
    .line 50993
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 50979
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 51019
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAddAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 51851
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

    .line 51853
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

    .line 51858
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51859
    return-object p0

    .line 51856
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    goto :goto_0
.end method

.method public mergeAddDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53849
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

    .line 53851
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

    .line 53856
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53857
    return-object p0

    .line 53854
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    goto :goto_0
.end method

.method public mergeAddFootprint(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52147
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

    .line 52149
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

    .line 52154
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52155
    return-object p0

    .line 52152
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    goto :goto_0
.end method

.method public mergeAddMessage(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52332
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

    .line 52334
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

    .line 52339
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52340
    return-object p0

    .line 52337
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    goto :goto_0
.end method

.method public mergeAddMissedCall(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53627
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

    .line 53629
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

    .line 53634
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53635
    return-object p0

    .line 53632
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    goto :goto_0
.end method

.method public mergeAddMyProfile(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52443
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

    .line 52445
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

    .line 52450
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52451
    return-object p0

    .line 52448
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    goto :goto_0
.end method

.method public mergeAddPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52517
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

    .line 52519
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

    .line 52524
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52525
    return-object p0

    .line 52522
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    goto :goto_0
.end method

.method public mergeAddPeopleGroups(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52554
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

    .line 52556
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

    .line 52561
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52562
    return-object p0

    .line 52559
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    goto :goto_0
.end method

.method public mergeAddPeopleToPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52628
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

    .line 52630
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

    .line 52635
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52636
    return-object p0

    .line 52633
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    goto :goto_0
.end method

.method public mergeAddRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52850
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

    .line 52852
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

    .line 52857
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52858
    return-object p0

    .line 52855
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    goto :goto_0
.end method

.method public mergeAddRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52739
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

    .line 52741
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

    .line 52746
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52747
    return-object p0

    .line 52744
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    goto :goto_0
.end method

.method public mergeAddRecommendWishlist(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52776
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

    .line 52778
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

    .line 52783
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52784
    return-object p0

    .line 52781
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    goto :goto_0
.end method

.method public mergeAddSound(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53220
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

    .line 53222
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

    .line 53227
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53228
    return-object p0

    .line 53225
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    goto :goto_0
.end method

.method public mergeAddSyncItems(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53331
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

    .line 53333
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

    .line 53338
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53339
    return-object p0

    .line 53336
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    goto :goto_0
.end method

.method public mergeAddWallpaper(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53960
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

    .line 53962
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

    .line 53967
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53968
    return-object p0

    .line 53965
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    goto :goto_0
.end method

.method public mergeBeginFullMerge(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53405
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

    .line 53407
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

    .line 53412
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53413
    return-object p0

    .line 53410
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    goto :goto_0
.end method

.method public mergeCheckForMessages(Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53553
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

    .line 53555
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

    .line 53560
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53561
    return-object p0

    .line 53558
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    goto :goto_0
.end method

.method public mergeClearAllMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53738
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

    .line 53740
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

    .line 53745
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53746
    return-object p0

    .line 53743
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    goto :goto_0
.end method

.method public mergeClearMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53701
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

    .line 53703
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

    .line 53708
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53709
    return-object p0

    .line 53706
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    goto :goto_0
.end method

.method public mergeClearMissedCallsByPhoneNumber(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53664
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

    .line 53666
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

    .line 53671
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53672
    return-object p0

    .line 53669
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    goto :goto_0
.end method

.method public mergeDeleteAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 51925
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

    .line 51927
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

    .line 51932
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51933
    return-object p0

    .line 51930
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    goto :goto_0
.end method

.method public mergeDeleteAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52036
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

    .line 52038
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

    .line 52043
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52044
    return-object p0

    .line 52041
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    goto :goto_0
.end method

.method public mergeDeleteDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53923
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

    .line 53925
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

    .line 53930
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53931
    return-object p0

    .line 53928
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    goto :goto_0
.end method

.method public mergeDeleteFootprint(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52221
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

    .line 52223
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

    .line 52228
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52229
    return-object p0

    .line 52226
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    goto :goto_0
.end method

.method public mergeDeleteMessage(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52406
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

    .line 52408
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

    .line 52413
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52414
    return-object p0

    .line 52411
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    goto :goto_0
.end method

.method public mergeDeletePeopleByAccountType(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52073
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

    .line 52075
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

    .line 52080
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52081
    return-object p0

    .line 52078
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    goto :goto_0
.end method

.method public mergeDeletePeopleFromPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52665
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

    .line 52667
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

    .line 52672
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52673
    return-object p0

    .line 52670
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    goto :goto_0
.end method

.method public mergeDeletePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52702
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

    .line 52704
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

    .line 52709
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52710
    return-object p0

    .line 52707
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    goto :goto_0
.end method

.method public mergeDeleteRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52887
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

    .line 52889
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

    .line 52894
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52895
    return-object p0

    .line 52892
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    goto :goto_0
.end method

.method public mergeDeleteRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53072
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

    .line 53074
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

    .line 53079
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53080
    return-object p0

    .line 53077
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    goto :goto_0
.end method

.method public mergeDeleteRecommendedWishlist(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52813
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

    .line 52815
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

    .line 52820
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52821
    return-object p0

    .line 52818
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    goto :goto_0
.end method

.method public mergeEndFullMerge(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53516
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

    .line 53518
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

    .line 53523
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53524
    return-object p0

    .line 53521
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 51057
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 51239
    :goto_0
    return-object p0

    .line 51058
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51059
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setType(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51061
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51062
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51064
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51065
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51067
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51068
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51070
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51071
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeGetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51073
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51074
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51076
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51077
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51079
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 51080
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeletePeopleByAccountType(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51082
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 51083
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSetPersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51085
    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 51086
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddFootprint(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51088
    :cond_a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 51089
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateFootprint(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51091
    :cond_b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 51092
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteFootprint(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51094
    :cond_c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 51095
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSetFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51097
    :cond_d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 51098
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSetFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51100
    :cond_e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 51101
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddMessage(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51103
    :cond_f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 51104
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateMessage(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51106
    :cond_10
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 51107
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteMessage(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51109
    :cond_11
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 51110
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddMyProfile(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51112
    :cond_12
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 51113
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateMyProfile(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51115
    :cond_13
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 51116
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51118
    :cond_14
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 51119
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddPeopleGroups(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51121
    :cond_15
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 51122
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdatePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51124
    :cond_16
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 51125
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddPeopleToPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51127
    :cond_17
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 51128
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeletePeopleFromPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51130
    :cond_18
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 51131
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeletePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51133
    :cond_19
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 51134
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51136
    :cond_1a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 51137
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddRecommendWishlist(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51139
    :cond_1b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 51140
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteRecommendedWishlist(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51142
    :cond_1c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 51143
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51145
    :cond_1d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 51146
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51148
    :cond_1e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 51149
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51151
    :cond_1f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 51152
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51154
    :cond_20
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 51155
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateRecommendAppLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51157
    :cond_21
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 51158
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateRecommendAppCommentLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51160
    :cond_22
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 51161
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51163
    :cond_23
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 51164
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSearchRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51166
    :cond_24
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 51167
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeGetRecommendNewApplicationCommentsLikes(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51169
    :cond_25
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 51170
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeGetMyAppsAndFriendsAppsRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51172
    :cond_26
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 51173
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddSound(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51175
    :cond_27
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 51176
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeLogRemoteError(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51178
    :cond_28
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 51179
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51181
    :cond_29
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 51182
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddSyncItems(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51184
    :cond_2a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 51185
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeProcessSyncItems(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51187
    :cond_2b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 51188
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeBeginFullMerge(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51190
    :cond_2c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 51191
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeRequestForAdd(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51193
    :cond_2d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 51194
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeRequestForUpdate(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51196
    :cond_2e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 51197
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeEndFullMerge(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51199
    :cond_2f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 51200
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeCheckForMessages(Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51202
    :cond_30
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 51203
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSetNewVoiceMailCount(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51205
    :cond_31
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 51206
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddMissedCall(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51208
    :cond_32
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 51209
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeClearMissedCallsByPhoneNumber(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51211
    :cond_33
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 51212
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeClearMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51214
    :cond_34
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 51215
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeClearAllMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51217
    :cond_35
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 51218
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSetMissedCallAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51220
    :cond_36
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 51221
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeSetMissedCallsAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51223
    :cond_37
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 51224
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51226
    :cond_38
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 51227
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUpdateDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51229
    :cond_39
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 51230
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDeleteDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51232
    :cond_3a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 51233
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeAddWallpaper(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51235
    :cond_3b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 51236
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeMessageQueueTestMessage(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    .line 51238
    :cond_3c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 51250
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 51251
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 51256
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 51258
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 51259
    :goto_1
    return-object p0

    .line 51253
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 51264
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 51265
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    move-result-object v4

    .line 51266
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    if-nez v4, :cond_1

    .line 51267
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 51269
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setType(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto :goto_0

    .line 51274
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v1

    .line 51275
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasRequestForAdd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 51276
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    .line 51278
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51279
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setRequestForAdd(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto :goto_0

    .line 51283
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v1

    .line 51284
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddMissedCall()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 51285
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    .line 51287
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51288
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddMissedCall(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto :goto_0

    .line 51292
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    move-result-object v1

    .line 51293
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateRecommendCommentLike()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 51294
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;

    .line 51296
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51297
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51301
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v1

    .line 51302
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeletePeopleByAccountType()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 51303
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    .line 51305
    :cond_5
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51306
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeletePeopleByAccountType(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51310
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    move-result-object v1

    .line 51311
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteDeviceSetting()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 51312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;

    .line 51314
    :cond_6
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51315
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51319
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    move-result-object v1

    .line 51320
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddPeopleToPeopleGroup()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 51321
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;

    .line 51323
    :cond_7
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51324
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddPeopleToPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51328
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;
    :sswitch_8
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    move-result-object v1

    .line 51329
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddAggregatePerson()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 51330
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;

    .line 51332
    :cond_8
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51333
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51337
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;
    :sswitch_9
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v1

    .line 51338
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeletePeopleFromPeopleGroup()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 51339
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    .line 51341
    :cond_9
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51342
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeletePeopleFromPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51346
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    :sswitch_a
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    move-result-object v1

    .line 51347
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddWallpaper()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 51348
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;

    .line 51350
    :cond_a
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51351
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddWallpaper(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51355
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;
    :sswitch_b
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    move-result-object v1

    .line 51356
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateMyProfile()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 51357
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;

    .line 51359
    :cond_b
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51360
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateMyProfile(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51364
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;
    :sswitch_c
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    move-result-object v1

    .line 51365
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddDeviceSetting()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 51366
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;

    .line 51368
    :cond_c
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51369
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51373
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;
    :sswitch_d
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v1

    .line 51374
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeletePeopleGroup()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 51375
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    .line 51377
    :cond_d
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51378
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeletePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51382
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    :sswitch_e
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v1

    .line 51383
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateDeviceSetting()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 51384
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    .line 51386
    :cond_e
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51387
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51391
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    :sswitch_f
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    move-result-object v1

    .line 51392
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdatePeopleGroup()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 51393
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;

    .line 51395
    :cond_f
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51396
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdatePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51400
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;
    :sswitch_10
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;

    move-result-object v1

    .line 51401
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasCheckForMessages()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 51402
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;

    .line 51404
    :cond_10
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51405
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setCheckForMessages(Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51409
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;
    :sswitch_11
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v1

    .line 51410
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddRecommendCommentLike()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 51411
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    .line 51413
    :cond_11
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51414
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51418
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    :sswitch_12
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v1

    .line 51419
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateVirtualDevice()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 51420
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    .line 51422
    :cond_12
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51423
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51427
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    :sswitch_13
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    move-result-object v1

    .line 51428
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteMessage()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 51429
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;

    .line 51431
    :cond_13
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51432
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteMessage(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51436
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;
    :sswitch_14
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    move-result-object v1

    .line 51437
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddMessage()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 51438
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;

    .line 51440
    :cond_14
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51441
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddMessage(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51445
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;
    :sswitch_15
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    move-result-object v1

    .line 51446
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddSound()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 51447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;

    .line 51449
    :cond_15
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51450
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddSound(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51454
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;
    :sswitch_16
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    move-result-object v1

    .line 51455
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSetAggregatePersonImage()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 51456
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;

    .line 51458
    :cond_16
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51459
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51463
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;
    :sswitch_17
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    move-result-object v1

    .line 51464
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSetFootprintMemo()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 51465
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;

    .line 51467
    :cond_17
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51468
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSetFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51472
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;
    :sswitch_18
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    move-result-object v1

    .line 51473
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSetFootprintImage()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 51474
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;

    .line 51476
    :cond_18
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51477
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSetFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51481
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;
    :sswitch_19
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    move-result-object v1

    .line 51482
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasClearMissedCalls()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 51483
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;

    .line 51485
    :cond_19
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51486
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setClearMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51490
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;
    :sswitch_1a
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v1

    .line 51491
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasLogRemoteError()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 51492
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    .line 51494
    :cond_1a
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51495
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setLogRemoteError(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51499
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    :sswitch_1b
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    move-result-object v1

    .line 51500
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateRecommendAppCommentLastViewDate()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 51501
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;

    .line 51503
    :cond_1b
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51504
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateRecommendAppCommentLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51508
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;
    :sswitch_1c
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    move-result-object v1

    .line 51509
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSetMissedCallAsViewed()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 51510
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;

    .line 51512
    :cond_1c
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51513
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSetMissedCallAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51517
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    move-result-object v1

    .line 51518
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSetPersonImage()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 51519
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;

    .line 51521
    :cond_1d
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51522
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSetPersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51526
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;
    :sswitch_1e
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v1

    .line 51527
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 51528
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    .line 51530
    :cond_1e
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51531
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setGetMyAppsAndFriendsAppsRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51535
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    :sswitch_1f
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    move-result-object v1

    .line 51536
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddRecommendAppsOnPhone()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 51537
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;

    .line 51539
    :cond_1f
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51540
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51544
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;
    :sswitch_20
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    move-result-object v1

    .line 51545
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteAggregatePersonImage()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 51546
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;

    .line 51548
    :cond_20
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51549
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51553
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;
    :sswitch_21
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    move-result-object v1

    .line 51554
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteRecommendAppsOnPhone()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 51555
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;

    .line 51557
    :cond_21
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51558
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51562
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;
    :sswitch_22
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v1

    .line 51563
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSearchRecommendCommentLike()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 51564
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    .line 51566
    :cond_22
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51567
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSearchRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51571
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    :sswitch_23
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v1

    .line 51572
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSetNewVoiceMailCount()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 51573
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    .line 51575
    :cond_23
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51576
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSetNewVoiceMailCount(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51580
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;
    :sswitch_24
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v1

    .line 51581
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddPeopleGroups()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 51582
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    .line 51584
    :cond_24
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51585
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddPeopleGroups(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51589
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    :sswitch_25
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v1

    .line 51590
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasMessageQueueTestMessage()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 51591
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    .line 51593
    :cond_25
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51594
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setMessageQueueTestMessage(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51598
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    :sswitch_26
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v1

    .line 51599
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateRecommendAppsOnPhone()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 51600
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    .line 51602
    :cond_26
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51603
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51607
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    :sswitch_27
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    move-result-object v1

    .line 51608
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteAggregatePerson()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 51609
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;

    .line 51611
    :cond_27
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51612
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51616
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;
    :sswitch_28
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    move-result-object v1

    .line 51617
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateAggregatePerson()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 51618
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;

    .line 51620
    :cond_28
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51621
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51625
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;
    :sswitch_29
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v1

    .line 51626
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteRecommendedWishlist()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 51627
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    .line 51629
    :cond_29
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51630
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteRecommendedWishlist(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51634
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v1

    .line 51635
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateMessage()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 51636
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    .line 51638
    :cond_2a
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51639
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateMessage(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51643
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    :sswitch_2b
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v1

    .line 51644
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddRecommendWishlist()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 51645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    .line 51647
    :cond_2b
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51648
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddRecommendWishlist(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51652
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    :sswitch_2c
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    move-result-object v1

    .line 51653
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasBeginFullMerge()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 51654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;

    .line 51656
    :cond_2c
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51657
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setBeginFullMerge(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51661
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;
    :sswitch_2d
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v1

    .line 51662
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddPeopleGroup()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 51663
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    .line 51665
    :cond_2d
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51666
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51670
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    :sswitch_2e
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v1

    .line 51671
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteRecommendCommentLike()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 51672
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    .line 51674
    :cond_2e
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51675
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51679
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    :sswitch_2f
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    move-result-object v1

    .line 51680
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateRecommendAppLastViewDate()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 51681
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;

    .line 51683
    :cond_2f
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51684
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateRecommendAppLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51688
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;
    :sswitch_30
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v1

    .line 51689
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasRequestForUpdate()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 51690
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    .line 51692
    :cond_30
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51693
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setRequestForUpdate(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51697
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    :sswitch_31
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    move-result-object v1

    .line 51698
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasDeleteFootprint()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 51699
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;

    .line 51701
    :cond_31
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51702
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setDeleteFootprint(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51706
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;
    :sswitch_32
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    move-result-object v1

    .line 51707
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasGetAggregatePersonImage()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 51708
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;

    .line 51710
    :cond_32
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51711
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setGetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51715
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;
    :sswitch_33
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    move-result-object v1

    .line 51716
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddSyncItems()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 51717
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;

    .line 51719
    :cond_33
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51720
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddSyncItems(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51724
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;
    :sswitch_34
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    move-result-object v1

    .line 51725
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasClearMissedCallsByPhoneNumber()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 51726
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;

    .line 51728
    :cond_34
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51729
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setClearMissedCallsByPhoneNumber(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51733
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;
    :sswitch_35
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    move-result-object v1

    .line 51734
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddFootprint()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 51735
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;

    .line 51737
    :cond_35
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51738
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddFootprint(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51742
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;
    :sswitch_36
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    move-result-object v1

    .line 51743
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasProcessSyncItems()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 51744
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;

    .line 51746
    :cond_36
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51747
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setProcessSyncItems(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51751
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;
    :sswitch_37
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v1

    .line 51752
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasSetMissedCallsAsViewed()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 51753
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    .line 51755
    :cond_37
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51756
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setSetMissedCallsAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51760
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    :sswitch_38
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    move-result-object v1

    .line 51761
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasGetRecommendNewApplicationCommentsLikes()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 51762
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;

    .line 51764
    :cond_38
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51765
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setGetRecommendNewApplicationCommentsLikes(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51769
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;
    :sswitch_39
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v1

    .line 51770
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasEndFullMerge()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 51771
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    .line 51773
    :cond_39
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51774
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setEndFullMerge(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51778
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    :sswitch_3a
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    move-result-object v1

    .line 51779
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasUpdateFootprint()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 51780
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;

    .line 51782
    :cond_3a
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51783
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setUpdateFootprint(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51787
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;
    :sswitch_3b
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    move-result-object v1

    .line 51788
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasAddMyProfile()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 51789
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;

    .line 51791
    :cond_3b
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51792
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setAddMyProfile(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51796
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;
    :sswitch_3c
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    move-result-object v1

    .line 51797
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->hasClearAllMissedCalls()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 51798
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->getClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;

    .line 51800
    :cond_3c
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 51801
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->setClearAllMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    goto/16 :goto_0

    .line 51251
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
    .parameter "other"

    .prologue
    .line 51048
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    if-eqz v0, :cond_0

    .line 51049
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object p0

    .line 51052
    .end local p0
    :goto_0
    return-object p0

    .line 51051
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
    .line 50979
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50979
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

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
    .line 50979
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

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
    .line 50979
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50979
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

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
    .line 50979
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeGetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 51962
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

    .line 51964
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

    .line 51969
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51970
    return-object p0

    .line 51967
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    goto :goto_0
.end method

.method public mergeGetMyAppsAndFriendsAppsRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53183
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

    .line 53185
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

    .line 53190
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53191
    return-object p0

    .line 53188
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    goto :goto_0
.end method

.method public mergeGetRecommendNewApplicationCommentsLikes(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53146
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

    .line 53148
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

    .line 53153
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53154
    return-object p0

    .line 53151
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    goto :goto_0
.end method

.method public mergeLogRemoteError(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53257
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

    .line 53259
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

    .line 53264
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53265
    return-object p0

    .line 53262
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    goto :goto_0
.end method

.method public mergeMessageQueueTestMessage(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53997
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

    .line 53999
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

    .line 54004
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 54005
    return-object p0

    .line 54002
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    goto :goto_0
.end method

.method public mergeProcessSyncItems(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53368
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

    .line 53370
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

    .line 53375
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53376
    return-object p0

    .line 53373
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    goto :goto_0
.end method

.method public mergeRequestForAdd(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53442
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

    .line 53444
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

    .line 53449
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53450
    return-object p0

    .line 53447
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    goto :goto_0
.end method

.method public mergeRequestForUpdate(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53479
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

    .line 53481
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

    .line 53486
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53487
    return-object p0

    .line 53484
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    goto :goto_0
.end method

.method public mergeSearchRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53109
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

    .line 53111
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

    .line 53116
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53117
    return-object p0

    .line 53114
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    goto :goto_0
.end method

.method public mergeSetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 51999
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

    .line 52001
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

    .line 52006
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52007
    return-object p0

    .line 52004
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    goto :goto_0
.end method

.method public mergeSetFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52258
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

    .line 52260
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

    .line 52265
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52266
    return-object p0

    .line 52263
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    goto :goto_0
.end method

.method public mergeSetFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52295
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

    .line 52297
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

    .line 52302
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52303
    return-object p0

    .line 52300
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    goto :goto_0
.end method

.method public mergeSetMissedCallAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53775
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

    .line 53777
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

    .line 53782
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53783
    return-object p0

    .line 53780
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    goto :goto_0
.end method

.method public mergeSetMissedCallsAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53812
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

    .line 53814
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

    .line 53819
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53820
    return-object p0

    .line 53817
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    goto :goto_0
.end method

.method public mergeSetNewVoiceMailCount(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53590
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

    .line 53592
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

    .line 53597
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53598
    return-object p0

    .line 53595
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    goto :goto_0
.end method

.method public mergeSetPersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52110
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

    .line 52112
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

    .line 52117
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52118
    return-object p0

    .line 52115
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    goto :goto_0
.end method

.method public mergeUpdateAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 51888
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

    .line 51890
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

    .line 51895
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51896
    return-object p0

    .line 51893
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    goto :goto_0
.end method

.method public mergeUpdateDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53886
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

    .line 53888
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

    .line 53893
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53894
    return-object p0

    .line 53891
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    goto :goto_0
.end method

.method public mergeUpdateFootprint(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52184
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

    .line 52186
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

    .line 52191
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52192
    return-object p0

    .line 52189
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    goto :goto_0
.end method

.method public mergeUpdateMessage(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52369
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

    .line 52371
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

    .line 52376
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52377
    return-object p0

    .line 52374
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    goto :goto_0
.end method

.method public mergeUpdateMyProfile(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52480
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

    .line 52482
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

    .line 52487
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52488
    return-object p0

    .line 52485
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    goto :goto_0
.end method

.method public mergeUpdatePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52591
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

    .line 52593
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

    .line 52598
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52599
    return-object p0

    .line 52596
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    goto :goto_0
.end method

.method public mergeUpdateRecommendAppCommentLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53035
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

    .line 53037
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

    .line 53042
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53043
    return-object p0

    .line 53040
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    goto :goto_0
.end method

.method public mergeUpdateRecommendAppLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52998
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

    .line 53000
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

    .line 53005
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53006
    return-object p0

    .line 53003
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    goto :goto_0
.end method

.method public mergeUpdateRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52961
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

    .line 52963
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

    .line 52968
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52969
    return-object p0

    .line 52966
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    goto :goto_0
.end method

.method public mergeUpdateRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52924
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

    .line 52926
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

    .line 52931
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52932
    return-object p0

    .line 52929
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    goto :goto_0
.end method

.method public mergeUpdateVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53294
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

    .line 53296
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

    .line 53301
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53302
    return-object p0

    .line 53299
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    goto :goto_0
.end method

.method public setAddAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 51846
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51847
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    .line 51848
    return-object p0
.end method

.method public setAddAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 51838
    if-nez p1, :cond_0

    .line 51839
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51841
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51842
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    .line 51843
    return-object p0
.end method

.method public setAddDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53844
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53845
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    .line 53846
    return-object p0
.end method

.method public setAddDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53836
    if-nez p1, :cond_0

    .line 53837
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53839
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53840
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    .line 53841
    return-object p0
.end method

.method public setAddFootprint(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52142
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52143
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    .line 52144
    return-object p0
.end method

.method public setAddFootprint(Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52134
    if-nez p1, :cond_0

    .line 52135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52137
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52138
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    .line 52139
    return-object p0
.end method

.method public setAddMessage(Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52327
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52328
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    .line 52329
    return-object p0
.end method

.method public setAddMessage(Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52319
    if-nez p1, :cond_0

    .line 52320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52322
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52323
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    .line 52324
    return-object p0
.end method

.method public setAddMissedCall(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53622
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53623
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .line 53624
    return-object p0
.end method

.method public setAddMissedCall(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53614
    if-nez p1, :cond_0

    .line 53615
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53617
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53618
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .line 53619
    return-object p0
.end method

.method public setAddMyProfile(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52438
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52439
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    .line 52440
    return-object p0
.end method

.method public setAddMyProfile(Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52430
    if-nez p1, :cond_0

    .line 52431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52433
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52434
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    .line 52435
    return-object p0
.end method

.method public setAddPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52512
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52513
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    .line 52514
    return-object p0
.end method

.method public setAddPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52504
    if-nez p1, :cond_0

    .line 52505
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52507
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52508
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    .line 52509
    return-object p0
.end method

.method public setAddPeopleGroups(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52549
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52550
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    .line 52551
    return-object p0
.end method

.method public setAddPeopleGroups(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52541
    if-nez p1, :cond_0

    .line 52542
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52544
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52545
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    .line 52546
    return-object p0
.end method

.method public setAddPeopleToPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52623
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52624
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    .line 52625
    return-object p0
.end method

.method public setAddPeopleToPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52615
    if-nez p1, :cond_0

    .line 52616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52618
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52619
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    .line 52620
    return-object p0
.end method

.method public setAddRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52845
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52846
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    .line 52847
    return-object p0
.end method

.method public setAddRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52837
    if-nez p1, :cond_0

    .line 52838
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52840
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52841
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    .line 52842
    return-object p0
.end method

.method public setAddRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52734
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52735
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    .line 52736
    return-object p0
.end method

.method public setAddRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52726
    if-nez p1, :cond_0

    .line 52727
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52729
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52730
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    .line 52731
    return-object p0
.end method

.method public setAddRecommendWishlist(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52771
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52772
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .line 52773
    return-object p0
.end method

.method public setAddRecommendWishlist(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52763
    if-nez p1, :cond_0

    .line 52764
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52766
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52767
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .line 52768
    return-object p0
.end method

.method public setAddSound(Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53215
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53216
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    .line 53217
    return-object p0
.end method

.method public setAddSound(Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53207
    if-nez p1, :cond_0

    .line 53208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53210
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53211
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    .line 53212
    return-object p0
.end method

.method public setAddSyncItems(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53326
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53327
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    .line 53328
    return-object p0
.end method

.method public setAddSyncItems(Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53318
    if-nez p1, :cond_0

    .line 53319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53321
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53322
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    .line 53323
    return-object p0
.end method

.method public setAddWallpaper(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53955
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53956
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    .line 53957
    return-object p0
.end method

.method public setAddWallpaper(Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53947
    if-nez p1, :cond_0

    .line 53948
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53950
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53951
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    .line 53952
    return-object p0
.end method

.method public setBeginFullMerge(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53400
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53401
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    .line 53402
    return-object p0
.end method

.method public setBeginFullMerge(Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53392
    if-nez p1, :cond_0

    .line 53393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53395
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53396
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    .line 53397
    return-object p0
.end method

.method public setCheckForMessages(Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53548
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53549
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    .line 53550
    return-object p0
.end method

.method public setCheckForMessages(Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53540
    if-nez p1, :cond_0

    .line 53541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53543
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53544
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    .line 53545
    return-object p0
.end method

.method public setClearAllMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53733
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53734
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    .line 53735
    return-object p0
.end method

.method public setClearAllMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53725
    if-nez p1, :cond_0

    .line 53726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53728
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53729
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    .line 53730
    return-object p0
.end method

.method public setClearMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53696
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53697
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    .line 53698
    return-object p0
.end method

.method public setClearMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53688
    if-nez p1, :cond_0

    .line 53689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53691
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53692
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    .line 53693
    return-object p0
.end method

.method public setClearMissedCallsByPhoneNumber(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53659
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53660
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    .line 53661
    return-object p0
.end method

.method public setClearMissedCallsByPhoneNumber(Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53651
    if-nez p1, :cond_0

    .line 53652
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53654
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53655
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    .line 53656
    return-object p0
.end method

.method public setDeleteAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 51920
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51921
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    .line 51922
    return-object p0
.end method

.method public setDeleteAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 51912
    if-nez p1, :cond_0

    .line 51913
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51915
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51916
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    .line 51917
    return-object p0
.end method

.method public setDeleteAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52031
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52032
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    .line 52033
    return-object p0
.end method

.method public setDeleteAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52023
    if-nez p1, :cond_0

    .line 52024
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52026
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52027
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    .line 52028
    return-object p0
.end method

.method public setDeleteDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53918
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53919
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    .line 53920
    return-object p0
.end method

.method public setDeleteDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53910
    if-nez p1, :cond_0

    .line 53911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53913
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53914
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    .line 53915
    return-object p0
.end method

.method public setDeleteFootprint(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52216
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52217
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    .line 52218
    return-object p0
.end method

.method public setDeleteFootprint(Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52208
    if-nez p1, :cond_0

    .line 52209
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52211
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52212
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    .line 52213
    return-object p0
.end method

.method public setDeleteMessage(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52401
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52402
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    .line 52403
    return-object p0
.end method

.method public setDeleteMessage(Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52393
    if-nez p1, :cond_0

    .line 52394
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52396
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52397
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    .line 52398
    return-object p0
.end method

.method public setDeletePeopleByAccountType(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52068
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52069
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .line 52070
    return-object p0
.end method

.method public setDeletePeopleByAccountType(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52060
    if-nez p1, :cond_0

    .line 52061
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52063
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52064
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .line 52065
    return-object p0
.end method

.method public setDeletePeopleFromPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52660
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52661
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    .line 52662
    return-object p0
.end method

.method public setDeletePeopleFromPeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52652
    if-nez p1, :cond_0

    .line 52653
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52655
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52656
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    .line 52657
    return-object p0
.end method

.method public setDeletePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52697
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52698
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .line 52699
    return-object p0
.end method

.method public setDeletePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52689
    if-nez p1, :cond_0

    .line 52690
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52692
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52693
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .line 52694
    return-object p0
.end method

.method public setDeleteRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52882
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52883
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    .line 52884
    return-object p0
.end method

.method public setDeleteRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52874
    if-nez p1, :cond_0

    .line 52875
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52877
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52878
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    .line 52879
    return-object p0
.end method

.method public setDeleteRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53067
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53068
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .line 53069
    return-object p0
.end method

.method public setDeleteRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53059
    if-nez p1, :cond_0

    .line 53060
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53062
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53063
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .line 53064
    return-object p0
.end method

.method public setDeleteRecommendedWishlist(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52808
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52809
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    .line 52810
    return-object p0
.end method

.method public setDeleteRecommendedWishlist(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52800
    if-nez p1, :cond_0

    .line 52801
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52803
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52804
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    .line 52805
    return-object p0
.end method

.method public setEndFullMerge(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53511
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53512
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    .line 53513
    return-object p0
.end method

.method public setEndFullMerge(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53503
    if-nez p1, :cond_0

    .line 53504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53506
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53507
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    .line 53508
    return-object p0
.end method

.method public setGetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 51957
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51958
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    .line 51959
    return-object p0
.end method

.method public setGetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 51949
    if-nez p1, :cond_0

    .line 51950
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51952
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51953
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    .line 51954
    return-object p0
.end method

.method public setGetMyAppsAndFriendsAppsRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53178
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53179
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    .line 53180
    return-object p0
.end method

.method public setGetMyAppsAndFriendsAppsRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53170
    if-nez p1, :cond_0

    .line 53171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53173
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53174
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    .line 53175
    return-object p0
.end method

.method public setGetRecommendNewApplicationCommentsLikes(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53141
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53142
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    .line 53143
    return-object p0
.end method

.method public setGetRecommendNewApplicationCommentsLikes(Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53133
    if-nez p1, :cond_0

    .line 53134
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53136
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53137
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    .line 53138
    return-object p0
.end method

.method public setLogRemoteError(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53252
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53253
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    .line 53254
    return-object p0
.end method

.method public setLogRemoteError(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53244
    if-nez p1, :cond_0

    .line 53245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53247
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53248
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    .line 53249
    return-object p0
.end method

.method public setMessageQueueTestMessage(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53992
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53993
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    .line 53994
    return-object p0
.end method

.method public setMessageQueueTestMessage(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53984
    if-nez p1, :cond_0

    .line 53985
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53987
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53988
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    .line 53989
    return-object p0
.end method

.method public setProcessSyncItems(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53363
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53364
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    .line 53365
    return-object p0
.end method

.method public setProcessSyncItems(Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53355
    if-nez p1, :cond_0

    .line 53356
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53358
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53359
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    .line 53360
    return-object p0
.end method

.method public setRequestForAdd(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53437
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53438
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    .line 53439
    return-object p0
.end method

.method public setRequestForAdd(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53429
    if-nez p1, :cond_0

    .line 53430
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53432
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53433
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    .line 53434
    return-object p0
.end method

.method public setRequestForUpdate(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53474
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53475
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    .line 53476
    return-object p0
.end method

.method public setRequestForUpdate(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53466
    if-nez p1, :cond_0

    .line 53467
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53469
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53470
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$152802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    .line 53471
    return-object p0
.end method

.method public setSearchRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53104
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53105
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .line 53106
    return-object p0
.end method

.method public setSearchRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53096
    if-nez p1, :cond_0

    .line 53097
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53099
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53100
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .line 53101
    return-object p0
.end method

.method public setSetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 51994
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51995
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    .line 51996
    return-object p0
.end method

.method public setSetAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 51986
    if-nez p1, :cond_0

    .line 51987
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51989
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51990
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    .line 51991
    return-object p0
.end method

.method public setSetFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52253
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52254
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    .line 52255
    return-object p0
.end method

.method public setSetFootprintImage(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52245
    if-nez p1, :cond_0

    .line 52246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52248
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52249
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    .line 52250
    return-object p0
.end method

.method public setSetFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52290
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52291
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .line 52292
    return-object p0
.end method

.method public setSetFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52282
    if-nez p1, :cond_0

    .line 52283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52285
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52286
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .line 52287
    return-object p0
.end method

.method public setSetMissedCallAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53770
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53771
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    .line 53772
    return-object p0
.end method

.method public setSetMissedCallAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53762
    if-nez p1, :cond_0

    .line 53763
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53765
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53766
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    .line 53767
    return-object p0
.end method

.method public setSetMissedCallsAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53807
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53808
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    .line 53809
    return-object p0
.end method

.method public setSetMissedCallsAsViewed(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53799
    if-nez p1, :cond_0

    .line 53800
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53802
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53803
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    .line 53804
    return-object p0
.end method

.method public setSetNewVoiceMailCount(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53585
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53586
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    .line 53587
    return-object p0
.end method

.method public setSetNewVoiceMailCount(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53577
    if-nez p1, :cond_0

    .line 53578
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53580
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53581
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$153402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    .line 53582
    return-object p0
.end method

.method public setSetPersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52105
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52106
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    .line 52107
    return-object p0
.end method

.method public setSetPersonImage(Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52097
    if-nez p1, :cond_0

    .line 52098
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52100
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52101
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    .line 52102
    return-object p0
.end method

.method public setType(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 51817
    if-nez p1, :cond_0

    .line 51818
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51820
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51821
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->type_:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$143802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 51822
    return-object p0
.end method

.method public setUpdateAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 51883
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51884
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    .line 51885
    return-object p0
.end method

.method public setUpdateAggregatePerson(Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 51875
    if-nez p1, :cond_0

    .line 51876
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51878
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 51879
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$144202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    .line 51880
    return-object p0
.end method

.method public setUpdateDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53881
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53882
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    .line 53883
    return-object p0
.end method

.method public setUpdateDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53873
    if-nez p1, :cond_0

    .line 53874
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53876
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$154902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53877
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$155002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    .line 53878
    return-object p0
.end method

.method public setUpdateFootprint(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52179
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52180
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    .line 52181
    return-object p0
.end method

.method public setUpdateFootprint(Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52171
    if-nez p1, :cond_0

    .line 52172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52174
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52175
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$145802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    .line 52176
    return-object p0
.end method

.method public setUpdateMessage(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52364
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52365
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    .line 52366
    return-object p0
.end method

.method public setUpdateMessage(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52356
    if-nez p1, :cond_0

    .line 52357
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52359
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52360
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$146802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    .line 52361
    return-object p0
.end method

.method public setUpdateMyProfile(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52475
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52476
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    .line 52477
    return-object p0
.end method

.method public setUpdateMyProfile(Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52467
    if-nez p1, :cond_0

    .line 52468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52470
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52471
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    .line 52472
    return-object p0
.end method

.method public setUpdatePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52586
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52587
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    .line 52588
    return-object p0
.end method

.method public setUpdatePeopleGroup(Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52578
    if-nez p1, :cond_0

    .line 52579
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52581
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$147902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52582
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$148002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    .line 52583
    return-object p0
.end method

.method public setUpdateRecommendAppCommentLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53030
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53031
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    .line 53032
    return-object p0
.end method

.method public setUpdateRecommendAppCommentLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53022
    if-nez p1, :cond_0

    .line 53023
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53025
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53026
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    .line 53027
    return-object p0
.end method

.method public setUpdateRecommendAppLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52993
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52994
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    .line 52995
    return-object p0
.end method

.method public setUpdateRecommendAppLastViewDate(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52985
    if-nez p1, :cond_0

    .line 52986
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52988
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52989
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    .line 52990
    return-object p0
.end method

.method public setUpdateRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52956
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52957
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    .line 52958
    return-object p0
.end method

.method public setUpdateRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52948
    if-nez p1, :cond_0

    .line 52949
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52951
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52952
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$150002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    .line 52953
    return-object p0
.end method

.method public setUpdateRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 52919
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52920
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    .line 52921
    return-object p0
.end method

.method public setUpdateRecommendCommentLike(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 52911
    if-nez p1, :cond_0

    .line 52912
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52914
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 52915
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$149802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    .line 52916
    return-object p0
.end method

.method public setUpdateVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 53289
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53290
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    .line 53291
    return-object p0
.end method

.method public setUpdateVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 53281
    if-nez p1, :cond_0

    .line 53282
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53284
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z

    .line 53285
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->access$151802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    .line 53286
    return-object p0
.end method
