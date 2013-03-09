.class public final Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$FileOptions;",
        "Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$11200(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11300()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 3

    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;-><init>()V

    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 3

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearJavaMultipleFiles()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12002(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12102(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    return-object p0
.end method

.method public clearJavaOuterClassname()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11802(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11902(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearJavaPackage()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11602(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11702(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12202(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12302(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

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

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getJavaMultipleFiles()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v0

    return v0
.end method

.method public getJavaOuterClassname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionCount()I

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

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasJavaMultipleFiles()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v0

    return v0
.end method

.method public hasJavaOuterClassname()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v0

    return v0
.end method

.method public hasJavaPackage()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v0

    return v0
.end method

.method public hasOptimizeFor()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaOuterClassname(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v4

    if-nez v4, :cond_1

    const/16 v5, 0x9

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setOptimizeFor(Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaMultipleFiles(Z)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x42 -> :sswitch_2
        0x48 -> :sswitch_3
        0x50 -> :sswitch_4
        0x1f3a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaOuterClassname(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaMultipleFiles(Z)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setOptimizeFor(Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    :cond_4
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    :cond_5
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeExtensionFields(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)V

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setJavaMultipleFiles(Z)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12002(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12102(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    return-object p0
.end method

.method public setJavaOuterClassname(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11802(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11902(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setJavaPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11602(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11702(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setOptimizeFor(Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12202(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12302(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
