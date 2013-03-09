.class public final Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPerson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$72700(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$72800()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    return-object v0
.end method


# virtual methods
.method public addAllPersonAddresses(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllPersonEmailAddresses(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllPersonPhoneNumbers(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllPersonSettings(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addPersonAddresses(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPersonAddresses(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPersonEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPersonEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPersonPhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPersonPhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPersonSettings(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPersonSettings(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_2
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_3
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_4
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;->AccountGmail:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    return-object p0
.end method

.method public clearAggregatedPersonId()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearCompanyName()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasCompanyName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getCompanyName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->companyName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearFirstName()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasFirstName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getFirstName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->firstName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearLastName()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasLastName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getLastName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->lastName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearNotes()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasNotes:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getNotes()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->notes_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearPersonAddresses()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearPersonAddressesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddressesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    return-object p0
.end method

.method public clearPersonEmailAddresses()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearPersonEmailAddressesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonEmailAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddressesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    return-object p0
.end method

.method public clearPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    return-object p0
.end method

.method public clearPersonPhoneNumbers()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearPersonPhoneNumbersUpdated()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonPhoneNumbersUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbersUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    return-object p0
.end method

.method public clearPersonSettings()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearPersonSettingsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonSettingsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettingsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;J)J

    return-object p0
.end method

.method public clearTitle()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTitle:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$76002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getTitle()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->title_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$76102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v0

    return-object v0
.end method

.method public getAggregatedPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getAggregatedPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getNotes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v0

    return-object v0
.end method

.method public getPersonAddressesCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonAddressesCount()I

    move-result v0

    return v0
.end method

.method public getPersonAddressesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonAddressesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public getPersonEmailAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonEmailAddresses(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public getPersonEmailAddressesCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonEmailAddressesCount()I

    move-result v0

    return v0
.end method

.method public getPersonEmailAddressesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonEmailAddressesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonEmailAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getPersonPhoneNumbers(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonPhoneNumbers(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getPersonPhoneNumbersCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonPhoneNumbersCount()I

    move-result v0

    return v0
.end method

.method public getPersonPhoneNumbersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonPhoneNumbersUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonPhoneNumbersUpdated()Z

    move-result v0

    return v0
.end method

.method public getPersonSettings(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonSettings(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public getPersonSettingsCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonSettingsCount()I

    move-result v0

    return v0
.end method

.method public getPersonSettingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonSettingsUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonSettingsUpdated()Z

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAccountType()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAccountType()Z

    move-result v0

    return v0
.end method

.method public hasAggregatedPersonId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId()Z

    move-result v0

    return v0
.end method

.method public hasCompanyName()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasCompanyName()Z

    move-result v0

    return v0
.end method

.method public hasFirstName()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasFirstName()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasLastName()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasLastName()Z

    move-result v0

    return v0
.end method

.method public hasNotes()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasNotes()Z

    move-result v0

    return v0
.end method

.method public hasPersonAddressesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasPersonEmailAddressesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonEmailAddressesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasPersonImage()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage()Z

    move-result v0

    return v0
.end method

.method public hasPersonPhoneNumbersUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonPhoneNumbersUpdated()Z

    move-result v0

    return v0
.end method

.method public hasPersonSettingsUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonSettingsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTitle()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAggregatedPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73700(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73700(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAccountType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getAggregatedPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeAggregatedPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasCompanyName()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setCompanyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasLastName()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasNotes()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getNotes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setNotes(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    :cond_7
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_8
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonAddressesUpdated()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonAddressesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    :cond_a
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonEmailAddressesUpdated()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonEmailAddressesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    :cond_d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    :cond_e
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_f
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_10
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonPhoneNumbersUpdated()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonPhoneNumbersUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonPhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    :cond_11
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/util/List;)Ljava/util/List;

    :cond_12
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_13
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonSettingsUpdated()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getPersonSettingsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonSettingsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    :cond_14
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    :cond_15
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setTitle(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    :cond_16
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v4

    if-nez v4, :cond_1

    const/16 v5, 0x8f

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->addPersonPhoneNumbers(Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->addPersonEmailAddresses(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->hasPersonImage()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->getPersonImage()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonSettingsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    :sswitch_9
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->addPersonSettings(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setTitle(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setCompanyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    :sswitch_c
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    :sswitch_d
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->addPersonAddresses(Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setNotes(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    :sswitch_f
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->hasAggregatedPersonId()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->getAggregatedPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setAggregatedPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonPhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->setPersonAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x478 -> :sswitch_1
        0x6d2 -> :sswitch_2
        0x87a -> :sswitch_3
        0xe6a -> :sswitch_4
        0x1088 -> :sswitch_5
        0x1420 -> :sswitch_6
        0x14a2 -> :sswitch_7
        0x14b2 -> :sswitch_8
        0x229a -> :sswitch_9
        0x23f2 -> :sswitch_a
        0x2472 -> :sswitch_b
        0x2892 -> :sswitch_c
        0x2b02 -> :sswitch_d
        0x2c52 -> :sswitch_e
        0x2cea -> :sswitch_f
        0x2d60 -> :sswitch_10
        0x37e0 -> :sswitch_11
        0x3a00 -> :sswitch_12
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    goto :goto_0
.end method

.method public setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    return-object p0
.end method

.method public setAggregatedPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setAggregatedPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasAggregatedPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->aggregatedPersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setCompanyName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasCompanyName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->companyName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasFirstName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->firstName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasLastName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->lastName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setNotes(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasNotes:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->notes_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setPersonAddresses(ILcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPersonAddresses(ILcom/htc/cscore/transport/SyncProtocol$HPersonAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73000(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPersonAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personAddressesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$74902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    return-object p0
.end method

.method public setPersonEmailAddresses(ILcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPersonEmailAddresses(ILcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddresses_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73100(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPersonEmailAddressesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonEmailAddressesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personEmailAddressesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    return-object p0
.end method

.method public setPersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    return-object p0
.end method

.method public setPersonImage(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75202(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personImage_:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75302(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    return-object p0
.end method

.method public setPersonPhoneNumbers(ILcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPersonPhoneNumbers(ILcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbers_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73200(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPersonPhoneNumbersUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonPhoneNumbersUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75402(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personPhoneNumbersUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75502(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    return-object p0
.end method

.method public setPersonSettings(ILcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPersonSettings(ILcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettings_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$73300(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPersonSettingsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasPersonSettingsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75602(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->personSettingsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75702(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75802(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$75902(Lcom/htc/cscore/transport/SyncProtocol$HPerson;J)J

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->hasTitle:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$76002(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPerson;->title_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->access$76102(Lcom/htc/cscore/transport/SyncProtocol$HPerson;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
