.class public final Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16700()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object v0
.end method


# virtual methods
.method public addAllFootprintCategories(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllFootprintImages(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addFootprintCategories(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFootprintCategories(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFootprintImages(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFootprintImages(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAddress()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getAddress()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->address_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearCreateDate()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->createDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;J)J

    return-object p0
.end method

.method public clearDescription()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDescription()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->description_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearFootprintCategories()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearFootprintCategoriesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategoriesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    return-object p0
.end method

.method public clearFootprintImages()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearFootprintImagesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImagesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    return-object p0
.end method

.method public clearFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearImageUrl()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->imageUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearIsPrivate()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isPrivate_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    return-object p0
.end method

.method public clearLatitude()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->latitude_:D
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;D)D

    return-object p0
.end method

.method public clearLongitude()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->longitude_:D
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;D)D

    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearNote()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getNote()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->note_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->phoneNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearRating()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->rating_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;I)I

    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;J)J

    return-object p0
.end method

.method public clearVoiceMemoTime()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->voiceMemoTime_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;I)I

    return-object p0
.end method

.method public clearWebsiteURL()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getWebsiteURL()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->websiteURL_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateDate()J
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getCreateDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintCategories(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategories(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintCategoriesCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesCount()I

    move-result v0

    return v0
.end method

.method public getFootprintCategoriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintCategoriesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesUpdated()Z

    move-result v0

    return v0
.end method

.method public getFootprintImages(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImages(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintImagesCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesCount()I

    move-result v0

    return v0
.end method

.method public getFootprintImagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintImagesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesUpdated()Z

    move-result v0

    return v0
.end method

.method public getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsPrivate()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getIsPrivate()Z

    move-result v0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getNote()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRating()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getRating()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVoiceMemoTime()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getVoiceMemoTime()I

    move-result v0

    return v0
.end method

.method public getWebsiteURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getWebsiteURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAddress()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress()Z

    move-result v0

    return v0
.end method

.method public hasCreateDate()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate()Z

    move-result v0

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription()Z

    move-result v0

    return v0
.end method

.method public hasFootprintCategoriesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasFootprintImagesUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasFootprintMemo()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl()Z

    move-result v0

    return v0
.end method

.method public hasIsPrivate()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate()Z

    move-result v0

    return v0
.end method

.method public hasLatitude()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude()Z

    move-result v0

    return v0
.end method

.method public hasLongitude()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasNote()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasRating()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasVoiceMemoTime()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime()Z

    move-result v0

    return v0
.end method

.method public hasWebsiteURL()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18200(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18200(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getCreateDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setDescription(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_3
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    :cond_4
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setFootprintCategoriesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_6
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    :cond_7
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setFootprintImagesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setImageUrl(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getIsPrivate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setIsPrivate(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setLatitude(D)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setLongitude(D)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_10
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getNote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setNote(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_11
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_12
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getRating()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setRating(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_13
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_14
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getVoiceMemoTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setVoiceMemoTime(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_15
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getWebsiteURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setWebsiteURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    :cond_16
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setLongitude(D)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setWebsiteURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->addFootprintImages(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setFootprintImagesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setRating(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setLatitude(D)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setNote(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setIsPrivate(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    :sswitch_c
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->hasFootprintMemo()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    :sswitch_d
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setImageUrl(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setDescription(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    :sswitch_11
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->addFootprintCategories(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setFootprintCategoriesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setVoiceMemoTime(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x369 -> :sswitch_1
        0x3ca -> :sswitch_2
        0x6ca -> :sswitch_3
        0x718 -> :sswitch_4
        0xcf8 -> :sswitch_5
        0xee2 -> :sswitch_6
        0x1088 -> :sswitch_7
        0x1119 -> :sswitch_8
        0x16c2 -> :sswitch_9
        0x1a78 -> :sswitch_a
        0x1ce8 -> :sswitch_b
        0x1f9a -> :sswitch_c
        0x2892 -> :sswitch_d
        0x2e6a -> :sswitch_e
        0x3262 -> :sswitch_f
        0x3292 -> :sswitch_10
        0x330a -> :sswitch_11
        0x3ab2 -> :sswitch_12
        0x3d28 -> :sswitch_13
        0x3ec8 -> :sswitch_14
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18400(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18400(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->address_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->createDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;J)J

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->description_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setFootprintCategories(ILcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setFootprintCategories(ILcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setFootprintCategoriesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategoriesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    return-object p0
.end method

.method public setFootprintImages(ILcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setFootprintImages(ILcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setFootprintImagesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImagesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    return-object p0
.end method

.method public setFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object p0
.end method

.method public setFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->imageUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setIsPrivate(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isPrivate_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    return-object p0
.end method

.method public setLatitude(D)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->latitude_:D
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;D)D

    return-object p0
.end method

.method public setLongitude(D)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->longitude_:D
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;D)D

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setNote(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->note_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->phoneNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setRating(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->rating_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;I)I

    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;J)J

    return-object p0
.end method

.method public setVoiceMemoTime(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->voiceMemoTime_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;I)I

    return-object p0
.end method

.method public setWebsiteURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->websiteURL_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
