.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$41600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$41700()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object v0
.end method


# virtual methods
.method public addAllMyProfileAddresses(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMyProfileEmailAddresses(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMyProfileEvents(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMyProfileInstantMessagingIDs(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMyProfileNotes(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMyProfileOrganizations(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMyProfilePhoneNumbers(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMyProfileWebSites(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addMyProfileAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfileAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfileEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfileEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfileEvents(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfileEvents(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfileInstantMessagingIDs(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfileInstantMessagingIDs(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfileNotes(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfileNotes(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfileOrganizations(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfileOrganizations(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfilePhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfilePhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfileWebSites(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMyProfileWebSites(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_2
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_3
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_4
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_5
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_6
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_7
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_8
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFamilyName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->familyName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearFirstName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->firstName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearGivenName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getGivenName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->givenName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearLastName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getLastName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->lastName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearMiddleName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->middleName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearMyProfileAddresses()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearMyProfileAddressesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddressesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public clearMyProfileEmailAddresses()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearMyProfileEmailAddressesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddressesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public clearMyProfileEvents()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearMyProfileEventsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEventsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public clearMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    return-object p0
.end method

.method public clearMyProfileInstantMessagingIDs()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearMyProfileInstantMessagingIDsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public clearMyProfileNotes()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearMyProfileNotesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public clearMyProfileOrganizations()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearMyProfileOrganizationsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizationsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public clearMyProfilePhoneNumbers()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearMyProfilePhoneNumbersUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbersUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public clearMyProfileWebSites()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearMyProfileWebSitesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSitesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public clearNameSuffix()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getNameSuffix()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->nameSuffix_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$46002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;J)J

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getGivenName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileAddressesCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddressesCount()I

    move-result v0

    return v0
.end method

.method public getMyProfileAddressesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileAddressesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileEmailAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileEmailAddressesCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddressesCount()I

    move-result v0

    return v0
.end method

.method public getMyProfileEmailAddressesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileEmailAddressesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileEvents(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEvents(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileEventsCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEventsCount()I

    move-result v0

    return v0
.end method

.method public getMyProfileEventsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileEventsUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEventsUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileInstantMessagingIDs(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDs(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileInstantMessagingIDsCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDsCount()I

    move-result v0

    return v0
.end method

.method public getMyProfileInstantMessagingIDsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileInstantMessagingIDsUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDsUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileNotes(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotes(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileNotesCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotesCount()I

    move-result v0

    return v0
.end method

.method public getMyProfileNotesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileNotesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotesUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileOrganizations(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizations(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileOrganizationsCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizationsCount()I

    move-result v0

    return v0
.end method

.method public getMyProfileOrganizationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileOrganizationsUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizationsUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfilePhoneNumbers(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbers(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfilePhoneNumbersCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbersCount()I

    move-result v0

    return v0
.end method

.method public getMyProfilePhoneNumbersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfilePhoneNumbersUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbersUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileWebSites(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSites(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileWebSitesCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSitesCount()I

    move-result v0

    return v0
.end method

.method public getMyProfileWebSitesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileWebSitesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSitesUpdated()Z

    move-result v0

    return v0
.end method

.method public getNameSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getNameSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasFamilyName()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName()Z

    move-result v0

    return v0
.end method

.method public hasFirstName()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName()Z

    move-result v0

    return v0
.end method

.method public hasGivenName()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasLastName()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName()Z

    move-result v0

    return v0
.end method

.method public hasMiddleName()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileAddressesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileEmailAddressesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileEventsUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileImage()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileInstantMessagingIDsUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileNotesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileOrganizationsUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfilePhoneNumbersUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileWebSitesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasNameSuffix()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setFamilyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getGivenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setGivenName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMiddleName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_6
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_7
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddressesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_9
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_a
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddressesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_c
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_d
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEventsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileEventsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_10
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_11
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileInstantMessagingIDsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_13
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_14
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_15
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileNotesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_16
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_17
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_18
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizationsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileOrganizationsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_19
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_1a
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbersUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfilePhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_1c
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    :cond_1d
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSitesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileWebSitesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_1f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getNameSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setNameSuffix(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_20
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    :cond_21
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileWebSites(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileInstantMessagingIDs(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setGivenName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileOrganizations(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileInstantMessagingIDsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileOrganizationsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    :sswitch_8
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileNotes(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_a
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setFamilyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileNotesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMiddleName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfilePhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_12
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_14
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfilePhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_15
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->hasMyProfileImage()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileEventsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setNameSuffix(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileWebSitesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_19
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileEvents(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x15a -> :sswitch_1
        0x17a -> :sswitch_2
        0x30a -> :sswitch_3
        0x782 -> :sswitch_4
        0x8b2 -> :sswitch_5
        0x8e0 -> :sswitch_6
        0xc60 -> :sswitch_7
        0x102a -> :sswitch_8
        0x1088 -> :sswitch_9
        0x11c2 -> :sswitch_a
        0x1302 -> :sswitch_b
        0x14a2 -> :sswitch_c
        0x14b2 -> :sswitch_d
        0x1cd0 -> :sswitch_e
        0x2072 -> :sswitch_f
        0x27b8 -> :sswitch_10
        0x2858 -> :sswitch_11
        0x2892 -> :sswitch_12
        0x2b18 -> :sswitch_13
        0x2f1a -> :sswitch_14
        0x2f92 -> :sswitch_15
        0x31b0 -> :sswitch_16
        0x38da -> :sswitch_17
        0x3bb8 -> :sswitch_18
        0x3df2 -> :sswitch_19
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    goto :goto_0
.end method

.method public setFamilyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->familyName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->firstName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setGivenName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->givenName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->lastName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setMiddleName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->middleName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setMyProfileAddresses(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfileAddresses(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfileAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddressesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public setMyProfileEmailAddresses(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfileEmailAddresses(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfileEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddressesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public setMyProfileEvents(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfileEvents(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfileEventsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEventsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public setMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    return-object p0
.end method

.method public setMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    return-object p0
.end method

.method public setMyProfileInstantMessagingIDs(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfileInstantMessagingIDs(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfileInstantMessagingIDsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public setMyProfileNotes(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfileNotes(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfileNotesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public setMyProfileOrganizations(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfileOrganizations(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfileOrganizationsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizationsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public setMyProfilePhoneNumbers(ILcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfilePhoneNumbers(ILcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfilePhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbersUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public setMyProfileWebSites(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfileWebSites(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMyProfileWebSitesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSitesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    return-object p0
.end method

.method public setNameSuffix(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->nameSuffix_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$46002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;J)J

    return-object p0
.end method
