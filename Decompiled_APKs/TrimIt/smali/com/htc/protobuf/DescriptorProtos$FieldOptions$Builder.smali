.class public final Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$FieldOptions;",
        "Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5859
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5853
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13700()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .prologue
    .line 5853
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5905
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5906
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5909
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 3

    .prologue
    .line 5862
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>()V

    .line 5863
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    .line 5864
    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;"
        }
    .end annotation

    .prologue
    .line 6132
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6133
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13902(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 6135
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6136
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6124
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6125
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13902(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 6127
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6128
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6114
    if-nez p1, :cond_0

    .line 6115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6117
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6118
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13902(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 6120
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6121
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 5897
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5898
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5900
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 3

    .prologue
    .line 5913
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    if-nez v1, :cond_0

    .line 5914
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5917
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 5918
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13902(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 5921
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    .line 5922
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    .line 5923
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .prologue
    .line 5872
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_0

    .line 5873
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5876
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    .line 5877
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCtype()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .prologue
    .line 6030
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasCtype:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14002(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6031
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->CORD:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->ctype_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14102(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 6032
    return-object p0
.end method

.method public clearDeprecated()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6066
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14402(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6067
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14502(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6068
    return-object p0
.end method

.method public clearExperimentalMapKey()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .prologue
    .line 6087
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14602(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6088
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getExperimentalMapKey()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14702(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 6089
    return-object p0
.end method

.method public clearPacked()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6048
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasPacked:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14202(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6049
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->packed_:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14302(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6050
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .prologue
    .line 6139
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13902(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 6140
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .prologue
    .line 5881
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

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
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCtype()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1

    .prologue
    .line 6019
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getCtype()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 5890
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 6058
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v0

    return v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5886
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentalMapKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6076
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getExperimentalMapKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPacked()Z
    .locals 1

    .prologue
    .line 6040
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    return v0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 6100
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 6097
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionCount()I

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
    .line 6094
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCtype()Z
    .locals 1

    .prologue
    .line 6016
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v0

    return v0
.end method

.method public hasDeprecated()Z
    .locals 1

    .prologue
    .line 6055
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v0

    return v0
.end method

.method public hasExperimentalMapKey()Z
    .locals 1

    .prologue
    .line 6073
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey()Z

    move-result v0

    return v0
.end method

.method public hasPacked()Z
    .locals 1

    .prologue
    .line 6037
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 5868
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5853
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5894
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

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
    .line 5853
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5853
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

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
    .line 5853
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5964
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 5968
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 5969
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 5974
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5976
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 5977
    :goto_1
    return-object p0

    .line 5971
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 5982
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 5983
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->valueOf(I)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v4

    .line 5984
    .local v4, value:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    if-nez v4, :cond_1

    .line 5985
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 5987
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->setCtype(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    goto :goto_0

    .line 5992
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->setPacked(Z)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    goto :goto_0

    .line 5996
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->setDeprecated(Z)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    goto :goto_0

    .line 6000
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->setExperimentalMapKey(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    goto :goto_0

    .line 6004
    :sswitch_5
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v1

    .line 6005
    .local v1, subBuilder:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 6006
    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    goto :goto_0

    .line 5969
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x4a -> :sswitch_4
        0x1f3a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 5936
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5957
    :goto_0
    return-object p0

    .line 5937
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5938
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getCtype()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->setCtype(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 5940
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5941
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->setPacked(Z)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 5943
    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5944
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->setDeprecated(Z)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 5946
    :cond_3
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5947
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getExperimentalMapKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->setExperimentalMapKey(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 5949
    :cond_4
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5950
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5951
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13902(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 5953
    :cond_5
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5955
    :cond_6
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeExtensionFields(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 5956
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5927
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v0, :cond_0

    .line 5928
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p0

    .line 5931
    .end local p0
    :goto_0
    return-object p0

    .line 5930
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
    .line 5853
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5853
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

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
    .line 5853
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCtype(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6022
    if-nez p1, :cond_0

    .line 6023
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6025
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasCtype:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14002(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6026
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->ctype_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14102(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 6027
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6061
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14402(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6062
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14502(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6063
    return-object p0
.end method

.method public setExperimentalMapKey(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6079
    if-nez p1, :cond_0

    .line 6080
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6082
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14602(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6083
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14702(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 6084
    return-object p0
.end method

.method public setPacked(Z)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6043
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasPacked:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14202(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6044
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->packed_:Z
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$14302(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6045
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6110
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6111
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6103
    if-nez p2, :cond_0

    .line 6104
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6106
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6107
    return-object p0
.end method
