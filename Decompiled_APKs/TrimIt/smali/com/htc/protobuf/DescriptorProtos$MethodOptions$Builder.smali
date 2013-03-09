.class public final Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$MethodOptions;",
        "Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7271
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$16800(Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7265
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16900()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 7265
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7317
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7318
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 7321
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 3

    .prologue
    .line 7274
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;-><init>()V

    .line 7275
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    .line 7276
    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;"
        }
    .end annotation

    .prologue
    .line 7432
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7433
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17102(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;

    .line 7435
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7436
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 7424
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7425
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17102(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;

    .line 7427
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7428
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7414
    if-nez p1, :cond_0

    .line 7415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7417
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7418
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17102(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;

    .line 7420
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7421
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 7309
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7310
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7312
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 3

    .prologue
    .line 7325
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    if-nez v1, :cond_0

    .line 7326
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7329
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 7330
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17102(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;

    .line 7333
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    .line 7334
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    .line 7335
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2

    .prologue
    .line 7284
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_0

    .line 7285
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7288
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    .line 7289
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearUninterpretedOption()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2

    .prologue
    .line 7439
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17102(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;

    .line 7440
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2

    .prologue
    .line 7293
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

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
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 7302
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7298
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 7400
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 7397
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOptionCount()I

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
    .line 7394
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 7280
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 7265
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7306
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->isInitialized()Z

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
    .line 7265
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7265
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

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
    .line 7265
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7364
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 7368
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7369
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 7374
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7376
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 7377
    :goto_1
    return-object p0

    .line 7371
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 7382
    :sswitch_1
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    .line 7383
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 7384
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    goto :goto_0

    .line 7369
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1f3a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 7348
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 7357
    :goto_0
    return-object p0

    .line 7349
    :cond_0
    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7350
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7351
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17102(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;

    .line 7353
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7355
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeExtensionFields(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 7356
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 7339
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    if-eqz v0, :cond_0

    .line 7340
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object p0

    .line 7343
    .end local p0
    :goto_0
    return-object p0

    .line 7342
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
    .line 7265
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7265
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

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
    .line 7265
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 7410
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7411
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 7403
    if-nez p2, :cond_0

    .line 7404
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7406
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7407
    return-object p0
.end method
