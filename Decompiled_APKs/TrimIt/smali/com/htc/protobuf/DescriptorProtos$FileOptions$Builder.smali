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

    .prologue
    .line 4895
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$11200(Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4889
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11300()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 4889
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

    .prologue
    .line 4941
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4942
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4945
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 3

    .prologue
    .line 4898
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;-><init>()V

    .line 4899
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 4900
    return-object v0
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter
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

    .prologue
    .line 5171
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5172
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 5174
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5175
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5163
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5164
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 5166
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5167
    return-object p0
.end method

.method public addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5153
    if-nez p1, :cond_0

    .line 5154
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5156
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5157
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 5159
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5160
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 4933
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4934
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4936
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 3

    .prologue
    .line 4949
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    if-nez v1, :cond_0

    .line 4950
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4953
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 4954
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 4957
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 4958
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 4959
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 4908
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    if-nez v0, :cond_0

    .line 4909
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4912
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 4913
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearJavaMultipleFiles()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5105
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12002(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5106
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12102(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5107
    return-object p0
.end method

.method public clearJavaOuterClassname()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 5087
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11802(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5088
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11902(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 5089
    return-object p0
.end method

.method public clearJavaPackage()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 5066
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11602(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5067
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11702(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 5068
    return-object p0
.end method

.method public clearOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 5126
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12202(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5127
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12302(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 5128
    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 5178
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 5179
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .prologue
    .line 4917
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$ExtendableBuilder;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4889
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

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 4926
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4922
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getJavaMultipleFiles()Z
    .locals 1

    .prologue
    .line 5097
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v0

    return v0
.end method

.method public getJavaOuterClassname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5076
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5055
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .prologue
    .line 5115
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 5139
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 5136
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

    .prologue
    .line 5133
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

    .prologue
    .line 5094
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v0

    return v0
.end method

.method public hasJavaOuterClassname()Z
    .locals 1

    .prologue
    .line 5073
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v0

    return v0
.end method

.method public hasJavaPackage()Z
    .locals 1

    .prologue
    .line 5052
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v0

    return v0
.end method

.method public hasOptimizeFor()Z
    .locals 1

    .prologue
    .line 5112
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 4904
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4930
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

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
    .line 4889
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4889
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

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
    .line 4889
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5000
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 5004
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 5005
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 5010
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5012
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 5013
    :goto_1
    return-object p0

    .line 5007
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 5018
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 5022
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaOuterClassname(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 5026
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 5027
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v4

    .line 5028
    .local v4, value:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    if-nez v4, :cond_1

    .line 5029
    const/16 v5, 0x9

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 5031
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setOptimizeFor(Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 5036
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaMultipleFiles(Z)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 5040
    :sswitch_5
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v1

    .line 5041
    .local v1, subBuilder:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 5042
    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->addUninterpretedOption(Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    goto :goto_0

    .line 5005
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
    .parameter "other"

    .prologue
    .line 4972
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4993
    :goto_0
    return-object p0

    .line 4973
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4974
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 4976
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4977
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaOuterClassname(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 4979
    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4980
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setJavaMultipleFiles(Z)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 4982
    :cond_3
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4983
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getOptimizeFor()Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->setOptimizeFor(Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 4985
    :cond_4
    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4986
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4987
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11502(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 4989
    :cond_5
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4991
    :cond_6
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeExtensionFields(Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;)V

    .line 4992
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 4963
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_0

    .line 4964
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p0

    .line 4967
    .end local p0
    :goto_0
    return-object p0

    .line 4966
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
    .line 4889
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4889
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

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
    .line 4889
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setJavaMultipleFiles(Z)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5100
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12002(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5101
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12102(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5102
    return-object p0
.end method

.method public setJavaOuterClassname(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5079
    if-nez p1, :cond_0

    .line 5080
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5082
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11802(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5083
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11902(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 5084
    return-object p0
.end method

.method public setJavaPackage(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5058
    if-nez p1, :cond_0

    .line 5059
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5061
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11602(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5062
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11702(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 5063
    return-object p0
.end method

.method public setOptimizeFor(Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5118
    if-nez p1, :cond_0

    .line 5119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5121
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12202(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 5122
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$12302(Lcom/htc/protobuf/DescriptorProtos$FileOptions;Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 5123
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5149
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5150
    return-object p0
.end method

.method public setUninterpretedOption(ILcom/htc/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5142
    if-nez p2, :cond_0

    .line 5143
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5145
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->access$11500(Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5146
    return-object p0
.end method
