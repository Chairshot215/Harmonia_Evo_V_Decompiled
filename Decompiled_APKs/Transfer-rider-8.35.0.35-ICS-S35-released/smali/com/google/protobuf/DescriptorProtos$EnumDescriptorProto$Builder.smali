.class public final Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3262
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6800(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3257
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 3257
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->create()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3308
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3309
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3312
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 3

    .prologue
    .line 3265
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>()V

    .line 3266
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 3267
    return-object v0
.end method


# virtual methods
.method public addAllValue(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 3462
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;>;"
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3463
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3465
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3466
    return-object p0
.end method

.method public addValue(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3454
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3455
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3457
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3458
    return-object p0
.end method

.method public addValue(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3444
    if-nez p1, :cond_0

    .line 3445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3447
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3448
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3450
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3451
    return-object p0
.end method

.method public build()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 3300
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3301
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3303
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 3

    .prologue
    .line 3316
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-nez v1, :cond_0

    .line 3317
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3320
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 3321
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3324
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 3325
    .local v0, returnMe:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 3326
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3275
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-nez v0, :cond_0

    .line 3276
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3279
    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 3280
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7202(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    .line 3418
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7302(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 3419
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3505
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7402(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    .line 3506
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7502(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 3507
    return-object p0
.end method

.method public clearValue()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3469
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3470
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3284
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->create()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 3293
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3289
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3406
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 3478
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 3430
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    .prologue
    .line 3427
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

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
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3424
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 3403
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 3475
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 3271
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3257
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->internalGetResult()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3297
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

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
    .line 3257
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3257
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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
    .line 3257
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3360
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 3364
    .local v2, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3365
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 3370
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3372
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3373
    :goto_1
    return-object p0

    .line 3367
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 3378
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    goto :goto_0

    .line 3382
    :sswitch_2
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    .line 3383
    .local v0, subBuilder:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3384
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->addValue(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    goto :goto_0

    .line 3388
    .end local v0           #subBuilder:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    :sswitch_3
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    .line 3389
    .local v0, subBuilder:Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3390
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptions()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    .line 3392
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3393
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setOptions(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    goto :goto_0

    .line 3365
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 3339
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3353
    :goto_0
    return-object p0

    .line 3340
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3341
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    .line 3343
    :cond_1
    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3344
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3345
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3347
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3349
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3350
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeOptions(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    .line 3352
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3330
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    .line 3331
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p0

    .line 3334
    .end local p0
    :goto_0
    return-object p0

    .line 3333
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
    .line 3257
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3257
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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
    .line 3257
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7500(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3496
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7500(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7502(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 3501
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7402(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    .line 3502
    return-object p0

    .line 3499
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7502(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3409
    if-nez p1, :cond_0

    .line 3410
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3412
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7202(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    .line 3413
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7302(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 3414
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3489
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7402(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    .line 3490
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7502(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 3491
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3481
    if-nez p1, :cond_0

    .line 3482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3484
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7402(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    .line 3485
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #setter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7502(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 3486
    return-object p0
.end method

.method public setValue(ILcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3441
    return-object p0
.end method

.method public setValue(ILcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3433
    if-nez p2, :cond_0

    .line 3434
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3436
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3437
    return-object p0
.end method
