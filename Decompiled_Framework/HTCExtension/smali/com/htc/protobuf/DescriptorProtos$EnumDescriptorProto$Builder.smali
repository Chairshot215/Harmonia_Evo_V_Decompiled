.class public final Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 3

    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>()V

    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method


# virtual methods
.method public addAllValue(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addValue(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addValue(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 3

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7202(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7302(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearOptions()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7402(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7502(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public clearValue()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result v0

    return v0
.end method

.method public getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->addValue(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setOptions(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    :cond_1
    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeOptions(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7500(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7500(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7502(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    :goto_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7402(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7502(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7202(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7302(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7402(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7502(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7402(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7502(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    return-object p0
.end method

.method public setValue(ILcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setValue(ILcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
