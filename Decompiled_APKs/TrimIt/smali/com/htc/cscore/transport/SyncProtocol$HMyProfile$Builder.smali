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

    .prologue
    .line 14991
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$41600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14986
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$41700()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1

    .prologue
    .line 14986
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

    .prologue
    .line 15037
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15038
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 15041
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 3

    .prologue
    .line 14994
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;-><init>()V

    .line 14995
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 14996
    return-object v0
.end method


# virtual methods
.method public addAllMyProfileAddresses(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
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

    .prologue
    .line 15534
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15535
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15537
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15538
    return-object p0
.end method

.method public addAllMyProfileEmailAddresses(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
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

    .prologue
    .line 15603
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15604
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15606
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15607
    return-object p0
.end method

.method public addAllMyProfileEvents(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
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

    .prologue
    .line 15672
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15673
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15675
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15676
    return-object p0
.end method

.method public addAllMyProfileInstantMessagingIDs(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
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

    .prologue
    .line 15778
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15779
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15781
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15782
    return-object p0
.end method

.method public addAllMyProfileNotes(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
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

    .prologue
    .line 15847
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15848
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15850
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15851
    return-object p0
.end method

.method public addAllMyProfileOrganizations(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
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

    .prologue
    .line 15916
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15917
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15919
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15920
    return-object p0
.end method

.method public addAllMyProfilePhoneNumbers(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
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

    .prologue
    .line 15985
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15986
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15988
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15989
    return-object p0
.end method

.method public addAllMyProfileWebSites(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter
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

    .prologue
    .line 16054
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16055
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 16057
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16058
    return-object p0
.end method

.method public addMyProfileAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 15526
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15527
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15529
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15530
    return-object p0
.end method

.method public addMyProfileAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15516
    if-nez p1, :cond_0

    .line 15517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15519
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15520
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15522
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15523
    return-object p0
.end method

.method public addMyProfileEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 15595
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15596
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15598
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15599
    return-object p0
.end method

.method public addMyProfileEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15585
    if-nez p1, :cond_0

    .line 15586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15588
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15589
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15591
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15592
    return-object p0
.end method

.method public addMyProfileEvents(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 15664
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15665
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15667
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15668
    return-object p0
.end method

.method public addMyProfileEvents(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15654
    if-nez p1, :cond_0

    .line 15655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15657
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15658
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15660
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15661
    return-object p0
.end method

.method public addMyProfileInstantMessagingIDs(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 15770
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15771
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15773
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15774
    return-object p0
.end method

.method public addMyProfileInstantMessagingIDs(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15760
    if-nez p1, :cond_0

    .line 15761
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15763
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15764
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15766
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15767
    return-object p0
.end method

.method public addMyProfileNotes(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 15839
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15840
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15842
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15843
    return-object p0
.end method

.method public addMyProfileNotes(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15829
    if-nez p1, :cond_0

    .line 15830
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15832
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15833
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15835
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15836
    return-object p0
.end method

.method public addMyProfileOrganizations(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 15908
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15909
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15911
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15912
    return-object p0
.end method

.method public addMyProfileOrganizations(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15898
    if-nez p1, :cond_0

    .line 15899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15901
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15902
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15904
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15905
    return-object p0
.end method

.method public addMyProfilePhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 15977
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15978
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15980
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15981
    return-object p0
.end method

.method public addMyProfilePhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15967
    if-nez p1, :cond_0

    .line 15968
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15970
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15971
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15973
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15974
    return-object p0
.end method

.method public addMyProfileWebSites(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 16046
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16047
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 16049
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16050
    return-object p0
.end method

.method public addMyProfileWebSites(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 16036
    if-nez p1, :cond_0

    .line 16037
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16039
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16040
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 16042
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16043
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 15029
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15030
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 15032
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 3

    .prologue
    .line 15045
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    if-nez v1, :cond_0

    .line 15046
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15049
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 15050
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15053
    :cond_1
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 15054
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15057
    :cond_2
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 15058
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15061
    :cond_3
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_4

    .line 15062
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15065
    :cond_4
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_5

    .line 15066
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15069
    :cond_5
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_6

    .line 15070
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15073
    :cond_6
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_7

    .line 15074
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15077
    :cond_7
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_8

    .line 15078
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15081
    :cond_8
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 15082
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 15083
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15004
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    if-nez v0, :cond_0

    .line 15005
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15008
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 15009
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFamilyName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15368
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15369
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->familyName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 15370
    return-object p0
.end method

.method public clearFirstName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15389
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->firstName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 15391
    return-object p0
.end method

.method public clearGivenName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15410
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15411
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getGivenName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->givenName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 15412
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15447
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15448
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 15449
    return-object p0
.end method

.method public clearLastName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15468
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15469
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getLastName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->lastName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 15470
    return-object p0
.end method

.method public clearMiddleName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15489
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15490
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->middleName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 15491
    return-object p0
.end method

.method public clearMyProfileAddresses()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15541
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15542
    return-object p0
.end method

.method public clearMyProfileAddressesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15558
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15559
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddressesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15560
    return-object p0
.end method

.method public clearMyProfileEmailAddresses()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15610
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15611
    return-object p0
.end method

.method public clearMyProfileEmailAddressesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15627
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15628
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddressesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15629
    return-object p0
.end method

.method public clearMyProfileEvents()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15679
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15680
    return-object p0
.end method

.method public clearMyProfileEventsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15696
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15697
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEventsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15698
    return-object p0
.end method

.method public clearMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15733
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15734
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 15735
    return-object p0
.end method

.method public clearMyProfileInstantMessagingIDs()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15785
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15786
    return-object p0
.end method

.method public clearMyProfileInstantMessagingIDsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15802
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15803
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15804
    return-object p0
.end method

.method public clearMyProfileNotes()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15854
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15855
    return-object p0
.end method

.method public clearMyProfileNotesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15871
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15872
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15873
    return-object p0
.end method

.method public clearMyProfileOrganizations()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15923
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15924
    return-object p0
.end method

.method public clearMyProfileOrganizationsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15940
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15941
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizationsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15942
    return-object p0
.end method

.method public clearMyProfilePhoneNumbers()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15992
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15993
    return-object p0
.end method

.method public clearMyProfilePhoneNumbersUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16009
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 16010
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbersUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 16011
    return-object p0
.end method

.method public clearMyProfileWebSites()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 16061
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 16062
    return-object p0
.end method

.method public clearMyProfileWebSitesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16078
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 16079
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSitesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 16080
    return-object p0
.end method

.method public clearNameSuffix()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 16099
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 16100
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getNameSuffix()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->nameSuffix_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 16101
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 3

    .prologue
    .line 16117
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 16118
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$46002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;J)J

    .line 16119
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2

    .prologue
    .line 15013
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14986
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

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 15022
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 15018
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15357
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15378
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15399
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getGivenName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 15420
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15457
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15478
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .parameter "index"

    .prologue
    .line 15502
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileAddressesCount()I
    .locals 1

    .prologue
    .line 15499
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

    .prologue
    .line 15496
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

    .prologue
    .line 15550
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileEmailAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "index"

    .prologue
    .line 15571
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileEmailAddressesCount()I
    .locals 1

    .prologue
    .line 15568
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

    .prologue
    .line 15565
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

    .prologue
    .line 15619
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileEvents(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "index"

    .prologue
    .line 15640
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEvents(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileEventsCount()I
    .locals 1

    .prologue
    .line 15637
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

    .prologue
    .line 15634
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

    .prologue
    .line 15688
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEventsUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1

    .prologue
    .line 15706
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileInstantMessagingIDs(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "index"

    .prologue
    .line 15746
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDs(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileInstantMessagingIDsCount()I
    .locals 1

    .prologue
    .line 15743
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

    .prologue
    .line 15740
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

    .prologue
    .line 15794
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDsUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileNotes(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "index"

    .prologue
    .line 15815
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotes(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileNotesCount()I
    .locals 1

    .prologue
    .line 15812
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

    .prologue
    .line 15809
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

    .prologue
    .line 15863
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotesUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileOrganizations(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "index"

    .prologue
    .line 15884
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizations(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileOrganizationsCount()I
    .locals 1

    .prologue
    .line 15881
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

    .prologue
    .line 15878
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

    .prologue
    .line 15932
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizationsUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfilePhoneNumbers(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .parameter "index"

    .prologue
    .line 15953
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbers(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfilePhoneNumbersCount()I
    .locals 1

    .prologue
    .line 15950
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

    .prologue
    .line 15947
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

    .prologue
    .line 16001
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbersUpdated()Z

    move-result v0

    return v0
.end method

.method public getMyProfileWebSites(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "index"

    .prologue
    .line 16022
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSites(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileWebSitesCount()I
    .locals 1

    .prologue
    .line 16019
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

    .prologue
    .line 16016
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

    .prologue
    .line 16070
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSitesUpdated()Z

    move-result v0

    return v0
.end method

.method public getNameSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16088
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getNameSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 16109
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasFamilyName()Z
    .locals 1

    .prologue
    .line 15354
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName()Z

    move-result v0

    return v0
.end method

.method public hasFirstName()Z
    .locals 1

    .prologue
    .line 15375
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName()Z

    move-result v0

    return v0
.end method

.method public hasGivenName()Z
    .locals 1

    .prologue
    .line 15396
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 15417
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasLastName()Z
    .locals 1

    .prologue
    .line 15454
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName()Z

    move-result v0

    return v0
.end method

.method public hasMiddleName()Z
    .locals 1

    .prologue
    .line 15475
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileAddressesUpdated()Z
    .locals 1

    .prologue
    .line 15547
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileEmailAddressesUpdated()Z
    .locals 1

    .prologue
    .line 15616
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileEventsUpdated()Z
    .locals 1

    .prologue
    .line 15685
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileImage()Z
    .locals 1

    .prologue
    .line 15703
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileInstantMessagingIDsUpdated()Z
    .locals 1

    .prologue
    .line 15791
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileNotesUpdated()Z
    .locals 1

    .prologue
    .line 15860
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileOrganizationsUpdated()Z
    .locals 1

    .prologue
    .line 15929
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfilePhoneNumbersUpdated()Z
    .locals 1

    .prologue
    .line 15998
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileWebSitesUpdated()Z
    .locals 1

    .prologue
    .line 16067
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasNameSuffix()Z
    .locals 1

    .prologue
    .line 16085
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 16106
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 15000
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 14986
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 15026
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 15096
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 15197
    :goto_0
    return-object p0

    .line 15097
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15098
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setFamilyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15100
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15101
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15103
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15104
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getGivenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setGivenName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15106
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15107
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15109
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15110
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15112
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15113
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMiddleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMiddleName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15115
    :cond_6
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 15116
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15117
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15119
    :cond_7
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15121
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15122
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileAddressesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15124
    :cond_9
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 15125
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 15126
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15128
    :cond_a
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15130
    :cond_b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 15131
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEmailAddressesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15133
    :cond_c
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 15134
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 15135
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15137
    :cond_d
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15139
    :cond_e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 15140
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileEventsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileEventsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15142
    :cond_f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 15143
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15145
    :cond_10
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 15146
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 15147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15149
    :cond_11
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15151
    :cond_12
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 15152
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileInstantMessagingIDsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileInstantMessagingIDsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15154
    :cond_13
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 15155
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 15156
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15158
    :cond_14
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15160
    :cond_15
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 15161
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileNotesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileNotesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15163
    :cond_16
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 15164
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 15165
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15167
    :cond_17
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15169
    :cond_18
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 15170
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileOrganizationsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileOrganizationsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15172
    :cond_19
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 15173
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 15174
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15176
    :cond_1a
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15178
    :cond_1b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 15179
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfilePhoneNumbersUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfilePhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15181
    :cond_1c
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 15182
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 15183
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/util/List;)Ljava/util/List;

    .line 15185
    :cond_1d
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15187
    :cond_1e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 15188
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getMyProfileWebSitesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileWebSitesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15190
    :cond_1f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 15191
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getNameSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setNameSuffix(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15193
    :cond_20
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 15194
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    .line 15196
    :cond_21
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15204
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 15208
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 15209
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 15214
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 15216
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 15217
    :goto_1
    return-object p0

    .line 15211
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 15222
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    .line 15223
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 15224
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 15228
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    .line 15229
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 15230
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileWebSites(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 15234
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    .line 15235
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 15236
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileInstantMessagingIDs(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 15240
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setGivenName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 15244
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    .line 15245
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 15246
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileOrganizations(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 15250
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileInstantMessagingIDsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 15254
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileOrganizationsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 15258
    :sswitch_8
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    .line 15259
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 15260
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileNotes(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto :goto_0

    .line 15264
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15268
    :sswitch_a
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    .line 15269
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 15270
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileAddresses(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15274
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    :sswitch_b
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setFamilyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15278
    :sswitch_c
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15282
    :sswitch_d
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15286
    :sswitch_e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileNotesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15290
    :sswitch_f
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMiddleName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15294
    :sswitch_10
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfilePhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15298
    :sswitch_11
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15302
    :sswitch_12
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 15303
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15304
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 15306
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 15307
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15311
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_13
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15315
    :sswitch_14
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    .line 15316
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 15317
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfilePhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15321
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    :sswitch_15
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    .line 15322
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->hasMyProfileImage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15323
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->getMyProfileImage()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    .line 15325
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 15326
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15330
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    :sswitch_16
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileEventsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15334
    :sswitch_17
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setNameSuffix(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15338
    :sswitch_18
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->setMyProfileWebSitesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15342
    :sswitch_19
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    .line 15343
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 15344
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->addMyProfileEvents(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    goto/16 :goto_0

    .line 15209
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
    .parameter "other"

    .prologue
    .line 15087
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    if-eqz v0, :cond_0

    .line 15088
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object p0

    .line 15091
    .end local p0
    :goto_0
    return-object p0

    .line 15090
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
    .line 14986
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14986
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

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
    .line 14986
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

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
    .line 14986
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14986
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

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
    .line 14986
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15436
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

    .line 15438
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

    .line 15443
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15444
    return-object p0

    .line 15441
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15722
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

    .line 15724
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

    .line 15729
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15730
    return-object p0

    .line 15727
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    goto :goto_0
.end method

.method public setFamilyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15360
    if-nez p1, :cond_0

    .line 15361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15363
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFamilyName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15364
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->familyName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 15365
    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15381
    if-nez p1, :cond_0

    .line 15382
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15384
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasFirstName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15385
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->firstName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 15386
    return-object p0
.end method

.method public setGivenName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15402
    if-nez p1, :cond_0

    .line 15403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15405
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasGivenName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15406
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->givenName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 15407
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 15431
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15432
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 15433
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15423
    if-nez p1, :cond_0

    .line 15424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15426
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 15428
    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15460
    if-nez p1, :cond_0

    .line 15461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15463
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasLastName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15464
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->lastName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 15465
    return-object p0
.end method

.method public setMiddleName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15481
    if-nez p1, :cond_0

    .line 15482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15484
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMiddleName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15485
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->middleName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 15486
    return-object p0
.end method

.method public setMyProfileAddresses(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15512
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15513
    return-object p0
.end method

.method public setMyProfileAddresses(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15505
    if-nez p2, :cond_0

    .line 15506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15508
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$41900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15509
    return-object p0
.end method

.method public setMyProfileAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15553
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$43902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15554
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileAddressesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15555
    return-object p0
.end method

.method public setMyProfileEmailAddresses(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15581
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15582
    return-object p0
.end method

.method public setMyProfileEmailAddresses(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15574
    if-nez p2, :cond_0

    .line 15575
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15577
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15578
    return-object p0
.end method

.method public setMyProfileEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15622
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEmailAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15623
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEmailAddressesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15624
    return-object p0
.end method

.method public setMyProfileEvents(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15650
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15651
    return-object p0
.end method

.method public setMyProfileEvents(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15643
    if-nez p2, :cond_0

    .line 15644
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15646
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEvents_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15647
    return-object p0
.end method

.method public setMyProfileEventsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileEventsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15692
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileEventsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15693
    return-object p0
.end method

.method public setMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 15717
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15718
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 15719
    return-object p0
.end method

.method public setMyProfileImage(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15709
    if-nez p1, :cond_0

    .line 15710
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15712
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15713
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileImage_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 15714
    return-object p0
.end method

.method public setMyProfileInstantMessagingIDs(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15756
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15757
    return-object p0
.end method

.method public setMyProfileInstantMessagingIDs(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15749
    if-nez p2, :cond_0

    .line 15750
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15752
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDs_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15753
    return-object p0
.end method

.method public setMyProfileInstantMessagingIDsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15797
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileInstantMessagingIDsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15798
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileInstantMessagingIDsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15799
    return-object p0
.end method

.method public setMyProfileNotes(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15825
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15826
    return-object p0
.end method

.method public setMyProfileNotes(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15818
    if-nez p2, :cond_0

    .line 15819
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15821
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotes_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15822
    return-object p0
.end method

.method public setMyProfileNotesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15866
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileNotesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$44902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15867
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileNotesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15868
    return-object p0
.end method

.method public setMyProfileOrganizations(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15894
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15895
    return-object p0
.end method

.method public setMyProfileOrganizations(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15887
    if-nez p2, :cond_0

    .line 15888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15890
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizations_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15891
    return-object p0
.end method

.method public setMyProfileOrganizationsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15935
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileOrganizationsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15936
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileOrganizationsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 15937
    return-object p0
.end method

.method public setMyProfilePhoneNumbers(ILcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 15963
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15964
    return-object p0
.end method

.method public setMyProfilePhoneNumbers(ILcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15956
    if-nez p2, :cond_0

    .line 15957
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15959
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15960
    return-object p0
.end method

.method public setMyProfilePhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 16004
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfilePhoneNumbersUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 16005
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfilePhoneNumbersUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 16006
    return-object p0
.end method

.method public setMyProfileWebSites(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 16032
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16033
    return-object p0
.end method

.method public setMyProfileWebSites(ILcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 16025
    if-nez p2, :cond_0

    .line 16026
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16028
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSites_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$42600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16029
    return-object p0
.end method

.method public setMyProfileWebSitesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 16073
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasMyProfileWebSitesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 16074
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->myProfileWebSitesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 16075
    return-object p0
.end method

.method public setNameSuffix(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 16091
    if-nez p1, :cond_0

    .line 16092
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16094
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasNameSuffix:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 16095
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->nameSuffix_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 16096
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 16112
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$45902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;Z)Z

    .line 16113
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->access$46002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;J)J

    .line 16114
    return-object p0
.end method
