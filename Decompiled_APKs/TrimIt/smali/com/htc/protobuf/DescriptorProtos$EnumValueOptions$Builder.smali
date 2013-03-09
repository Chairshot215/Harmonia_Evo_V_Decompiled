.class public final Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;",
        "Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6621
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$15600(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6615
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15700()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1

    .prologue
    .line 6615
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6667
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6668
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6671
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 3

    .prologue
    .line 6624
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;-><init>()V

    .line 6625
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    .line 6626
    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;"
        }
    .end annotation

    .prologue
    .line 6782
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6783
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15902(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;Ljava/util/List;)Ljava/util/List;

    .line 6785
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6786
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6774
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6775
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15902(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;Ljava/util/List;)Ljava/util/List;

    .line 6777
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6778
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6764
    if-nez p1, :cond_0

    .line 6765
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6767
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6768
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15902(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;Ljava/util/List;)Ljava/util/List;

    .line 6770
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6771
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 6659
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6660
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6662
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 3

    .prologue
    .line 6675
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v1, :cond_0

    .line 6676
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6679
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 6680
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15902(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;Ljava/util/List;)Ljava/util/List;

    .line 6683
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    .line 6684
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    .line 6685
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 2

    .prologue
    .line 6634
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v0, :cond_0

    .line 6635
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6638
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    .line 6639
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearUninterpretedOption()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 2

    .prologue
    .line 6789
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15902(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;Ljava/util/List;)Ljava/util/List;

    .line 6790
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 2

    .prologue
    .line 6643
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

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
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 6652
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6648
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 6750
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 6747
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->getUninterpretedOptionCount()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6744
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 6630
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 6615
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6656
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->isInitialized()Z

    move-result v0

    return v0
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
    .line 6615
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6615
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

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
    .line 6615
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6714
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 6718
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 6719
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 6724
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6726
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 6727
    :goto_1
    return-object p0

    .line 6721
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 6732
    :sswitch_1
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    .line 6733
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 6734
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    goto :goto_0

    .line 6719
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1f3a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 6698
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 6707
    :goto_0
    return-object p0

    .line 6699
    :cond_0
    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6700
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6701
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15902(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;Ljava/util/List;)Ljava/util/List;

    .line 6703
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6705
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeExtensionFields(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 6706
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 6689
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    if-eqz v0, :cond_0

    .line 6690
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object p0

    .line 6693
    .end local p0
    :goto_0
    return-object p0

    .line 6692
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
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
    .line 6615
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6615
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

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
    .line 6615
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6760
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6761
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6753
    if-nez p2, :cond_0

    .line 6754
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6756
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->access$15900(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6757
    return-object p0
.end method
