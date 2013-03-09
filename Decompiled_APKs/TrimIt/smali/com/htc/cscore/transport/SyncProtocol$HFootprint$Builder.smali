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

    .prologue
    .line 6251
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6246
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16700()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1

    .prologue
    .line 6246
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

    .prologue
    .line 6297
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6298
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6301
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 3

    .prologue
    .line 6254
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;-><init>()V

    .line 6255
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 6256
    return-object v0
.end method


# virtual methods
.method public addAllFootprintCategories(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter
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

    .prologue
    .line 6623
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6624
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    .line 6626
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6627
    return-object p0
.end method

.method public addAllFootprintImages(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter
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

    .prologue
    .line 6692
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6693
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    .line 6695
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6696
    return-object p0
.end method

.method public addFootprintCategories(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6615
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6616
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    .line 6618
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6619
    return-object p0
.end method

.method public addFootprintCategories(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6605
    if-nez p1, :cond_0

    .line 6606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6608
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6609
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    .line 6611
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6612
    return-object p0
.end method

.method public addFootprintImages(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6684
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6685
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    .line 6687
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6688
    return-object p0
.end method

.method public addFootprintImages(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6674
    if-nez p1, :cond_0

    .line 6675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6677
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6678
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    .line 6680
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6681
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    .prologue
    .line 6289
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6290
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6292
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 3

    .prologue
    .line 6305
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    if-nez v1, :cond_0

    .line 6306
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6309
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 6310
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    .line 6313
    :cond_1
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 6314
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    .line 6317
    :cond_2
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 6318
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 6319
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    .line 6264
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    if-nez v0, :cond_0

    .line 6265
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6268
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 6269
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAddress()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    .line 6539
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6540
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getAddress()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->address_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    .line 6541
    return-object p0
.end method

.method public clearCreateDate()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 3

    .prologue
    .line 6557
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6558
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->createDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;J)J

    .line 6559
    return-object p0
.end method

.method public clearDescription()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    .line 6578
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6579
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDescription()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->description_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    .line 6580
    return-object p0
.end method

.method public clearFootprintCategories()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    .line 6630
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    .line 6631
    return-object p0
.end method

.method public clearFootprintCategoriesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6647
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6648
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategoriesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6649
    return-object p0
.end method

.method public clearFootprintImages()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    .line 6699
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    .line 6700
    return-object p0
.end method

.method public clearFootprintImagesUpdated()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6716
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6717
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImagesUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6718
    return-object p0
.end method

.method public clearFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    .line 6753
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6754
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 6755
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    .line 6790
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6791
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 6792
    return-object p0
.end method

.method public clearImageUrl()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    .line 6811
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6812
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->imageUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    .line 6813
    return-object p0
.end method

.method public clearIsPrivate()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6829
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6830
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isPrivate_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6831
    return-object p0
.end method

.method public clearLatitude()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 3

    .prologue
    .line 6847
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6848
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->latitude_:D
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;D)D

    .line 6849
    return-object p0
.end method

.method public clearLongitude()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 3

    .prologue
    .line 6865
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6866
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->longitude_:D
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;D)D

    .line 6867
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    .line 6886
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6887
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    .line 6888
    return-object p0
.end method

.method public clearNote()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    .line 6907
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6908
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getNote()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->note_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    .line 6909
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    .line 6928
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6929
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->phoneNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    .line 6930
    return-object p0
.end method

.method public clearRating()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6946
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6947
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->rating_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;I)I

    .line 6948
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 3

    .prologue
    .line 6964
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6965
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;J)J

    .line 6966
    return-object p0
.end method

.method public clearVoiceMemoTime()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6982
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6983
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->voiceMemoTime_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;I)I

    .line 6984
    return-object p0
.end method

.method public clearWebsiteURL()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    .line 7003
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 7004
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getWebsiteURL()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->websiteURL_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    .line 7005
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2

    .prologue
    .line 6273
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6246
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

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6528
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateDate()J
    .locals 2

    .prologue
    .line 6549
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getCreateDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    .prologue
    .line 6282
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6567
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6278
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintCategories(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .parameter "index"

    .prologue
    .line 6591
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategories(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintCategoriesCount()I
    .locals 1

    .prologue
    .line 6588
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

    .prologue
    .line 6585
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

    .prologue
    .line 6639
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesUpdated()Z

    move-result v0

    return v0
.end method

.method public getFootprintImages(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "index"

    .prologue
    .line 6660
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImages(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintImagesCount()I
    .locals 1

    .prologue
    .line 6657
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

    .prologue
    .line 6654
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

    .prologue
    .line 6708
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesUpdated()Z

    move-result v0

    return v0
.end method

.method public getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1

    .prologue
    .line 6726
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 6763
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6800
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 6821
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getIsPrivate()Z

    move-result v0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 6839
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 6857
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6875
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6896
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getNote()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6917
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 6938
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getRating()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 6956
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVoiceMemoTime()I
    .locals 1

    .prologue
    .line 6974
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getVoiceMemoTime()I

    move-result v0

    return v0
.end method

.method public getWebsiteURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6992
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getWebsiteURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 6525
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress()Z

    move-result v0

    return v0
.end method

.method public hasCreateDate()Z
    .locals 1

    .prologue
    .line 6546
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate()Z

    move-result v0

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 6564
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription()Z

    move-result v0

    return v0
.end method

.method public hasFootprintCategoriesUpdated()Z
    .locals 1

    .prologue
    .line 6636
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasFootprintImagesUpdated()Z
    .locals 1

    .prologue
    .line 6705
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated()Z

    move-result v0

    return v0
.end method

.method public hasFootprintMemo()Z
    .locals 1

    .prologue
    .line 6723
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 6760
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 6797
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl()Z

    move-result v0

    return v0
.end method

.method public hasIsPrivate()Z
    .locals 1

    .prologue
    .line 6818
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate()Z

    move-result v0

    return v0
.end method

.method public hasLatitude()Z
    .locals 1

    .prologue
    .line 6836
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude()Z

    move-result v0

    return v0
.end method

.method public hasLongitude()Z
    .locals 1

    .prologue
    .line 6854
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 6872
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasNote()Z
    .locals 1

    .prologue
    .line 6893
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 6914
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasRating()Z
    .locals 1

    .prologue
    .line 6935
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 6953
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasVoiceMemoTime()Z
    .locals 1

    .prologue
    .line 6971
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime()Z

    move-result v0

    return v0
.end method

.method public hasWebsiteURL()Z
    .locals 1

    .prologue
    .line 6989
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    .prologue
    .line 6260
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6286
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6742
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

    .line 6744
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

    .line 6749
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6750
    return-object p0

    .line 6747
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 6332
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 6400
    :goto_0
    return-object p0

    .line 6333
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6334
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6336
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6337
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getCreateDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6339
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6340
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setDescription(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6342
    :cond_3
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6343
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6344
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    .line 6346
    :cond_4
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6348
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6349
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setFootprintCategoriesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6351
    :cond_6
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 6352
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6353
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;

    .line 6355
    :cond_7
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6357
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6358
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setFootprintImagesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6360
    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6361
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6363
    :cond_a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6364
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6366
    :cond_b
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6367
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setImageUrl(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6369
    :cond_c
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6370
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getIsPrivate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setIsPrivate(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6372
    :cond_d
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6373
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setLatitude(D)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6375
    :cond_e
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6376
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setLongitude(D)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6378
    :cond_f
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6379
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6381
    :cond_10
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6382
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getNote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setNote(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6384
    :cond_11
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6385
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6387
    :cond_12
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6388
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getRating()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setRating(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6390
    :cond_13
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6391
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6393
    :cond_14
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6394
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getVoiceMemoTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setVoiceMemoTime(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6396
    :cond_15
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6397
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getWebsiteURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setWebsiteURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    .line 6399
    :cond_16
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6407
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 6411
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 6412
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 6417
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6419
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 6420
    :goto_1
    return-object p0

    .line 6414
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 6425
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setLongitude(D)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    .line 6429
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setWebsiteURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    .line 6433
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    .line 6434
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 6435
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->addFootprintImages(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    .line 6439
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setFootprintImagesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    .line 6443
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setRating(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    .line 6447
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    .line 6451
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    .line 6455
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setLatitude(D)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    .line 6459
    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setNote(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    .line 6463
    :sswitch_a
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setIsPrivate(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    .line 6467
    :sswitch_b
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto :goto_0

    .line 6471
    :sswitch_c
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    .line 6472
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->hasFootprintMemo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6473
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    .line 6475
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 6476
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    .line 6480
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    :sswitch_d
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 6481
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6482
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 6484
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 6485
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    .line 6489
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_e
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    .line 6493
    :sswitch_f
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setImageUrl(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    .line 6497
    :sswitch_10
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setDescription(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    .line 6501
    :sswitch_11
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    .line 6502
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 6503
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->addFootprintCategories(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    .line 6507
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    :sswitch_12
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    .line 6511
    :sswitch_13
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setFootprintCategoriesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    .line 6515
    :sswitch_14
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->setVoiceMemoTime(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    goto/16 :goto_0

    .line 6412
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
    .parameter "other"

    .prologue
    .line 6323
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    if-eqz v0, :cond_0

    .line 6324
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object p0

    .line 6327
    .end local p0
    :goto_0
    return-object p0

    .line 6326
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
    .line 6246
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6246
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

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
    .line 6246
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

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
    .line 6246
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6246
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

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
    .line 6246
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6779
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

    .line 6781
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

    .line 6786
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6787
    return-object p0

    .line 6784
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6531
    if-nez p1, :cond_0

    .line 6532
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6534
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6535
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->address_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    .line 6536
    return-object p0
.end method

.method public setCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6552
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6553
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->createDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;J)J

    .line 6554
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6570
    if-nez p1, :cond_0

    .line 6571
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6573
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6574
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->description_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    .line 6575
    return-object p0
.end method

.method public setFootprintCategories(ILcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6601
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6602
    return-object p0
.end method

.method public setFootprintCategories(ILcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6594
    if-nez p2, :cond_0

    .line 6595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6597
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6598
    return-object p0
.end method

.method public setFootprintCategoriesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6642
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6643
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategoriesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6644
    return-object p0
.end method

.method public setFootprintImages(ILcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6670
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6671
    return-object p0
.end method

.method public setFootprintImages(ILcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6663
    if-nez p2, :cond_0

    .line 6664
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6666
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6667
    return-object p0
.end method

.method public setFootprintImagesUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6711
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$17902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6712
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImagesUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6713
    return-object p0
.end method

.method public setFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6737
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6738
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 6739
    return-object p0
.end method

.method public setFootprintMemo(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6729
    if-nez p1, :cond_0

    .line 6730
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6732
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6733
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 6734
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6774
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6775
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 6776
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6766
    if-nez p1, :cond_0

    .line 6767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6769
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6770
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 6771
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6803
    if-nez p1, :cond_0

    .line 6804
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6806
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6807
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->imageUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    .line 6808
    return-object p0
.end method

.method public setIsPrivate(Z)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6824
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6825
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isPrivate_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6826
    return-object p0
.end method

.method public setLatitude(D)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6842
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$18902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6843
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->latitude_:D
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;D)D

    .line 6844
    return-object p0
.end method

.method public setLongitude(D)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6860
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6861
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->longitude_:D
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;D)D

    .line 6862
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6878
    if-nez p1, :cond_0

    .line 6879
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6881
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6882
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    .line 6883
    return-object p0
.end method

.method public setNote(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6899
    if-nez p1, :cond_0

    .line 6900
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6902
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6903
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->note_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    .line 6904
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6920
    if-nez p1, :cond_0

    .line 6921
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6923
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6924
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->phoneNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    .line 6925
    return-object p0
.end method

.method public setRating(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6941
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$19902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6942
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->rating_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;I)I

    .line 6943
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6959
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6960
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;J)J

    .line 6961
    return-object p0
.end method

.method public setVoiceMemoTime(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6977
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6978
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->voiceMemoTime_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;I)I

    .line 6979
    return-object p0
.end method

.method public setWebsiteURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6995
    if-nez p1, :cond_0

    .line 6996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6998
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z

    .line 6999
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->websiteURL_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->access$20602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;

    .line 7000
    return-object p0
.end method
