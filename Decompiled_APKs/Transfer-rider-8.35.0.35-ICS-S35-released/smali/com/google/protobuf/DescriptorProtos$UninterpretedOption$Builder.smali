.class public final Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8413
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$18900(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8408
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19000()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .prologue
    .line 8408
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->create()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8459
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8460
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 8463
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 3

    .prologue
    .line 8416
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>()V

    .line 8417
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 8418
    return-object v0
.end method


# virtual methods
.method public addAllName(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;"
        }
    .end annotation

    .prologue
    .line 8608
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;>;"
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8609
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19202(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    .line 8611
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8612
    return-object p0
.end method

.method public addName(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 8600
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8601
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19202(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    .line 8603
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8604
    return-object p0
.end method

.method public addName(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8590
    if-nez p1, :cond_0

    .line 8591
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8593
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8594
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19202(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    .line 8596
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8597
    return-object p0
.end method

.method public build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 8451
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8452
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8454
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 3

    .prologue
    .line 8467
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    if-nez v1, :cond_0

    .line 8468
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8471
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 8472
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19202(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    .line 8475
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 8476
    .local v0, returnMe:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 8477
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 8426
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    if-nez v0, :cond_0

    .line 8427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8430
    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 8431
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDoubleValue()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 3

    .prologue
    .line 8689
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19902(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 8690
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const-wide/16 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->doubleValue_:D
    invoke-static {v0, v1, v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$20002(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;D)D

    .line 8691
    return-object p0
.end method

.method public clearIdentifierValue()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 8635
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19302(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 8636
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19402(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/String;)Ljava/lang/String;

    .line 8637
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 8615
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19202(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    .line 8616
    return-object p0
.end method

.method public clearNegativeIntValue()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 3

    .prologue
    .line 8671
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19702(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 8672
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const-wide/16 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->negativeIntValue_:J
    invoke-static {v0, v1, v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19802(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;J)J

    .line 8673
    return-object p0
.end method

.method public clearPositiveIntValue()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 3

    .prologue
    .line 8653
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19502(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 8654
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const-wide/16 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->positiveIntValue_:J
    invoke-static {v0, v1, v2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19602(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;J)J

    .line 8655
    return-object p0
.end method

.method public clearStringValue()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 8710
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$20102(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 8711
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/google/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->stringValue_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$20202(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 8712
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .prologue
    .line 8435
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->create()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

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
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 8444
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8440
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 8681
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getIdentifierValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8624
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .parameter "index"

    .prologue
    .line 8576
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getName(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public getNameCount()I
    .locals 1

    .prologue
    .line 8573
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getNameCount()I

    move-result v0

    return v0
.end method

.method public getNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8570
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeIntValue()J
    .locals 2

    .prologue
    .line 8663
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getNegativeIntValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositiveIntValue()J
    .locals 2

    .prologue
    .line 8645
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getPositiveIntValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 8699
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasDoubleValue()Z
    .locals 1

    .prologue
    .line 8678
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result v0

    return v0
.end method

.method public hasIdentifierValue()Z
    .locals 1

    .prologue
    .line 8621
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result v0

    return v0
.end method

.method public hasNegativeIntValue()Z
    .locals 1

    .prologue
    .line 8660
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result v0

    return v0
.end method

.method public hasPositiveIntValue()Z
    .locals 1

    .prologue
    .line 8642
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result v0

    return v0
.end method

.method public hasStringValue()Z
    .locals 1

    .prologue
    .line 8696
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .prologue
    .line 8422
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 8408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->internalGetResult()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 8448
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8408
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8408
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8408
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8520
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 8524
    .local v2, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 8525
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 8530
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8532
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 8533
    :goto_1
    return-object p0

    .line 8527
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 8538
    :sswitch_1
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->newBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    move-result-object v0

    .line 8539
    .local v0, subBuilder:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8540
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->addName(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    goto :goto_0

    .line 8544
    .end local v0           #subBuilder:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setIdentifierValue(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    goto :goto_0

    .line 8548
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setPositiveIntValue(J)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    goto :goto_0

    .line 8552
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setNegativeIntValue(J)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    goto :goto_0

    .line 8556
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setDoubleValue(D)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    goto :goto_0

    .line 8560
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setStringValue(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    goto :goto_0

    .line 8525
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x31 -> :sswitch_5
        0x3a -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 8490
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 8513
    :goto_0
    return-object p0

    .line 8491
    :cond_0
    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8492
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8493
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19202(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;

    .line 8495
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8497
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8498
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setIdentifierValue(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 8500
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8501
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getPositiveIntValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setPositiveIntValue(J)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 8503
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8504
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getNegativeIntValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setNegativeIntValue(J)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 8506
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8507
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setDoubleValue(D)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 8509
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8510
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->setStringValue(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 8512
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 8481
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_0

    .line 8482
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p0

    .line 8485
    .end local p0
    :goto_0
    return-object p0

    .line 8484
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8408
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8408
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8408
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDoubleValue(D)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8684
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19902(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 8685
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->doubleValue_:D
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$20002(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;D)D

    .line 8686
    return-object p0
.end method

.method public setIdentifierValue(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8627
    if-nez p1, :cond_0

    .line 8628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8630
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19302(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 8631
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19402(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/String;)Ljava/lang/String;

    .line 8632
    return-object p0
.end method

.method public setName(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 8586
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8587
    return-object p0
.end method

.method public setName(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8579
    if-nez p2, :cond_0

    .line 8580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8582
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #getter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19200(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8583
    return-object p0
.end method

.method public setNegativeIntValue(J)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8666
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19702(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 8667
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->negativeIntValue_:J
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19802(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;J)J

    .line 8668
    return-object p0
.end method

.method public setPositiveIntValue(J)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8648
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19502(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 8649
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->positiveIntValue_:J
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$19602(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;J)J

    .line 8650
    return-object p0
.end method

.method public setStringValue(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8702
    if-nez p1, :cond_0

    .line 8703
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8705
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$20102(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Z)Z

    .line 8706
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->result:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    #setter for: Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->stringValue_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->access$20202(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 8707
    return-object p0
.end method
