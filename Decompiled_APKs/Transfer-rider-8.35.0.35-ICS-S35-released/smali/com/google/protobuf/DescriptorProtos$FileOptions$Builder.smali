.class public final Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/protobuf/DescriptorProtos$FileOptions;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5122
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$11200(Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5116
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11300()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 5116
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5168
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5169
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5172
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 3

    .prologue
    .line 5125
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;-><init>()V

    .line 5126
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 5127
    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    .prologue
    .line 5473
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5474
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 5476
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5477
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5465
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5466
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 5468
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5469
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5455
    if-nez p1, :cond_0

    .line 5456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5458
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5459
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 5461
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5462
    return-object p0
.end method

.method public build()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 5160
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5161
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5163
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 3

    .prologue
    .line 5176
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    if-nez v1, :cond_0

    .line 5177
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5180
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 5181
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 5184
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 5185
    .local v0, returnMe:Lcom/google/protobuf/DescriptorProtos$FileOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 5186
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 5135
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    if-nez v0, :cond_0

    .line 5136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5139
    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 5140
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCcGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 5392
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12402(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5393
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5394
    return-object p0
.end method

.method public clearJavaGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 5410
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5411
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5412
    return-object p0
.end method

.method public clearJavaMultipleFiles()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5353
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12002(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5354
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12102(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5355
    return-object p0
.end method

.method public clearJavaOuterClassname()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 5335
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11802(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5336
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11902(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 5337
    return-object p0
.end method

.method public clearJavaPackage()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 5314
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5315
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 5316
    return-object p0
.end method

.method public clearOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 5374
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12202(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5375
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12302(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 5376
    return-object p0
.end method

.method public clearPyGenericServices()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 5428
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12802(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5429
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12902(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5430
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 5480
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 5481
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 5144
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

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
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCcGenericServices()Z
    .locals 1

    .prologue
    .line 5384
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 5153
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5149
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getJavaGenericServices()Z
    .locals 1

    .prologue
    .line 5402
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v0

    return v0
.end method

.method public getJavaMultipleFiles()Z
    .locals 1

    .prologue
    .line 5345
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v0

    return v0
.end method

.method public getJavaOuterClassname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5324
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5303
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .prologue
    .line 5363
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    return-object v0
.end method

.method public getPyGenericServices()Z
    .locals 1

    .prologue
    .line 5420
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v0

    return v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 5441
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 5438
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionCount()I

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
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5435
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCcGenericServices()Z
    .locals 1

    .prologue
    .line 5381
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v0

    return v0
.end method

.method public hasJavaGenericServices()Z
    .locals 1

    .prologue
    .line 5399
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v0

    return v0
.end method

.method public hasJavaMultipleFiles()Z
    .locals 1

    .prologue
    .line 5342
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v0

    return v0
.end method

.method public hasJavaOuterClassname()Z
    .locals 1

    .prologue
    .line 5321
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v0

    return v0
.end method

.method public hasJavaPackage()Z
    .locals 1

    .prologue
    .line 5300
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v0

    return v0
.end method

.method public hasOptimizeFor()Z
    .locals 1

    .prologue
    .line 5360
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v0

    return v0
.end method

.method public hasPyGenericServices()Z
    .locals 1

    .prologue
    .line 5417
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 5131
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->internalGetResult()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->internalGetResult()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5157
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

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
    .line 5116
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5116
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

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
    .line 5116
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5236
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 5240
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 5241
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 5246
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5248
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5249
    :goto_1
    return-object p0

    .line 5243
    :sswitch_0
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 5254
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 5258
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaOuterClassname(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 5262
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 5263
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v4

    .line 5264
    .local v4, value:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    if-nez v4, :cond_1

    .line 5265
    const/16 v5, 0x9

    invoke-virtual {v3, v5, v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 5267
    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setOptimizeFor(Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 5272
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaMultipleFiles(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 5276
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setCcGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 5280
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 5284
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setPyGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 5288
    :sswitch_8
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v1

    .line 5289
    .local v1, subBuilder:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5290
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 5241
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x42 -> :sswitch_2
        0x48 -> :sswitch_3
        0x50 -> :sswitch_4
        0x80 -> :sswitch_5
        0x88 -> :sswitch_6
        0x90 -> :sswitch_7
        0x1f3a -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 5199
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5229
    :goto_0
    return-object p0

    .line 5200
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5201
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 5203
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5204
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaOuterClassname(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 5206
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5207
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaMultipleFiles(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 5209
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5210
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setOptimizeFor(Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 5212
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5213
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setCcGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 5215
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5216
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 5218
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5219
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->setPyGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 5221
    :cond_7
    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5222
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5223
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 5225
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5227
    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 5228
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5190
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    .line 5191
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p0

    .line 5194
    .end local p0
    :goto_0
    return-object p0

    .line 5193
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

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
    .line 5116
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5116
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

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
    .line 5116
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCcGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5387
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12402(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5388
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5389
    return-object p0
.end method

.method public setJavaGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5405
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5406
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5407
    return-object p0
.end method

.method public setJavaMultipleFiles(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5348
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12002(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5349
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12102(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5350
    return-object p0
.end method

.method public setJavaOuterClassname(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5327
    if-nez p1, :cond_0

    .line 5328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5330
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11802(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5331
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11902(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 5332
    return-object p0
.end method

.method public setJavaPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5306
    if-nez p1, :cond_0

    .line 5307
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5309
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5310
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 5311
    return-object p0
.end method

.method public setOptimizeFor(Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5366
    if-nez p1, :cond_0

    .line 5367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5369
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12202(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5370
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12302(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 5371
    return-object p0
.end method

.method public setPyGenericServices(Z)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5423
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12802(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5424
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$12902(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5425
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5451
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5452
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5444
    if-nez p2, :cond_0

    .line 5445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5447
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5448
    return-object p0
.end method
