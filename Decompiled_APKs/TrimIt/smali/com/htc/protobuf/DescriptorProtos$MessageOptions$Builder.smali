.class public final Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$MessageOptions;",
        "Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5363
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5357
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12700()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .prologue
    .line 5357
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5409
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5410
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5413
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 3

    .prologue
    .line 5366
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;-><init>()V

    .line 5367
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 5368
    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;"
        }
    .end annotation

    .prologue
    .line 5574
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5575
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12902(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    .line 5577
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5578
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5566
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5567
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12902(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    .line 5569
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5570
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5556
    if-nez p1, :cond_0

    .line 5557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5559
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5560
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12902(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    .line 5562
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5563
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 5401
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5402
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5404
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 3

    .prologue
    .line 5417
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    if-nez v1, :cond_0

    .line 5418
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5421
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 5422
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12902(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    .line 5425
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 5426
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 5427
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .prologue
    .line 5376
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_0

    .line 5377
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5380
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 5381
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMessageSetWireFormat()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5511
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13002(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 5512
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13102(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 5513
    return-object p0
.end method

.method public clearNoStandardDescriptorAccessor()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5529
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13202(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 5530
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13302(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 5531
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .prologue
    .line 5581
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12902(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    .line 5582
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2

    .prologue
    .line 5385
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

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
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 5394
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5390
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageSetWireFormat()Z
    .locals 1

    .prologue
    .line 5503
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    return v0
.end method

.method public getNoStandardDescriptorAccessor()Z
    .locals 1

    .prologue
    .line 5521
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v0

    return v0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 5542
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 5539
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionCount()I

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
    .line 5536
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMessageSetWireFormat()Z
    .locals 1

    .prologue
    .line 5500
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v0

    return v0
.end method

.method public hasNoStandardDescriptorAccessor()Z
    .locals 1

    .prologue
    .line 5518
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 5372
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5357
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5398
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->isInitialized()Z

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
    .line 5357
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5357
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

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
    .line 5357
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5462
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 5466
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5467
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 5472
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5474
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 5475
    :goto_1
    return-object p0

    .line 5469
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 5480
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->setMessageSetWireFormat(Z)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    goto :goto_0

    .line 5484
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->setNoStandardDescriptorAccessor(Z)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    goto :goto_0

    .line 5488
    :sswitch_3
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    .line 5489
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 5490
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    goto :goto_0

    .line 5467
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1f3a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 5440
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5455
    :goto_0
    return-object p0

    .line 5441
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5442
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->setMessageSetWireFormat(Z)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 5444
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5445
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->setNoStandardDescriptorAccessor(Z)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 5447
    :cond_2
    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5448
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5449
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12902(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;

    .line 5451
    :cond_3
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5453
    :cond_4
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeExtensionFields(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 5454
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5431
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    if-eqz v0, :cond_0

    .line 5432
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object p0

    .line 5435
    .end local p0
    :goto_0
    return-object p0

    .line 5434
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
    .line 5357
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5357
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

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
    .line 5357
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessageSetWireFormat(Z)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5506
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13002(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 5507
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13102(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 5508
    return-object p0
.end method

.method public setNoStandardDescriptorAccessor(Z)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5524
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13202(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 5525
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$13302(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z

    .line 5526
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5552
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5553
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5545
    if-nez p2, :cond_0

    .line 5546
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5548
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5549
    return-object p0
.end method
