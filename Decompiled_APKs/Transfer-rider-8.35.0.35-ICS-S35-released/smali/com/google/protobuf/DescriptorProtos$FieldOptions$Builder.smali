.class public final Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$FieldOptions;",
        "Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6200
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$14200(Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6194
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14300()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .prologue
    .line 6194
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6246
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6247
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6250
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 3

    .prologue
    .line 6203
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>()V

    .line 6204
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    .line 6205
    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;"
        }
    .end annotation

    .prologue
    .line 6473
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6474
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14502(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 6476
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6477
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6465
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6466
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14502(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 6468
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6469
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6455
    if-nez p1, :cond_0

    .line 6456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6458
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6459
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14502(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 6461
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6462
    return-object p0
.end method

.method public build()Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 6238
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6239
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6241
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    .locals 3

    .prologue
    .line 6254
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    if-nez v1, :cond_0

    .line 6255
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6258
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 6259
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14502(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 6262
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    .line 6263
    .local v0, returnMe:Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    .line 6264
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .prologue
    .line 6213
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_0

    .line 6214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6217
    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    .line 6218
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCtype()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .prologue
    .line 6371
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasCtype:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14602(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6372
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->STRING:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->ctype_:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14702(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 6373
    return-object p0
.end method

.method public clearDeprecated()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6407
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$15002(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6408
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$15102(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6409
    return-object p0
.end method

.method public clearExperimentalMapKey()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .prologue
    .line 6428
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$15202(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6429
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getExperimentalMapKey()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$15302(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 6430
    return-object p0
.end method

.method public clearPacked()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6389
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasPacked:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14802(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6390
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->packed_:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14902(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6391
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .prologue
    .line 6480
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14502(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 6481
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2

    .prologue
    .line 6222
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->create()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

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
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCtype()Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1

    .prologue
    .line 6360
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getCtype()Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 6231
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 6399
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v0

    return v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6227
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentalMapKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6417
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getExperimentalMapKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPacked()Z
    .locals 1

    .prologue
    .line 6381
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    return v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 6441
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 6438
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionCount()I

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
    .line 6435
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCtype()Z
    .locals 1

    .prologue
    .line 6357
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v0

    return v0
.end method

.method public hasDeprecated()Z
    .locals 1

    .prologue
    .line 6396
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v0

    return v0
.end method

.method public hasExperimentalMapKey()Z
    .locals 1

    .prologue
    .line 6414
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey()Z

    move-result v0

    return v0
.end method

.method public hasPacked()Z
    .locals 1

    .prologue
    .line 6378
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 6209
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->internalGetResult()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 6194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->internalGetResult()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6235
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

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
    .line 6194
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6194
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

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
    .line 6194
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6305
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 6309
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 6310
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 6315
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6317
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6318
    :goto_1
    return-object p0

    .line 6312
    :sswitch_0
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 6323
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 6324
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v4

    .line 6325
    .local v4, value:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;
    if-nez v4, :cond_1

    .line 6326
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 6328
    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setCtype(Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    goto :goto_0

    .line 6333
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setPacked(Z)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    goto :goto_0

    .line 6337
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    goto :goto_0

    .line 6341
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setExperimentalMapKey(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    goto :goto_0

    .line 6345
    :sswitch_5
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v1

    .line 6346
    .local v1, subBuilder:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6347
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    goto :goto_0

    .line 6310
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

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 6277
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 6298
    :goto_0
    return-object p0

    .line 6278
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6279
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getCtype()Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setCtype(Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 6281
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6282
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setPacked(Z)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 6284
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6285
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 6287
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6288
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getExperimentalMapKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->setExperimentalMapKey(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 6290
    :cond_4
    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6291
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6292
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14502(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 6294
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6296
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 6297
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 6268
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v0, :cond_0

    .line 6269
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p0

    .line 6272
    .end local p0
    :goto_0
    return-object p0

    .line 6271
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
    .line 6194
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6194
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

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
    .line 6194
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCtype(Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6363
    if-nez p1, :cond_0

    .line 6364
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6366
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasCtype:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14602(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6367
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->ctype_:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14702(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 6368
    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6402
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$15002(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6403
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$15102(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6404
    return-object p0
.end method

.method public setExperimentalMapKey(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6420
    if-nez p1, :cond_0

    .line 6421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6423
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$15202(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6424
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$15302(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 6425
    return-object p0
.end method

.method public setPacked(Z)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6384
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->hasPacked:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14802(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6385
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->packed_:Z
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14902(Lcom/google/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 6386
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6451
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6452
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6444
    if-nez p2, :cond_0

    .line 6445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6447
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;->result:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    #getter for: Lcom/google/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->access$14500(Lcom/google/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6448
    return-object p0
.end method
