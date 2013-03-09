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

    .prologue
    .line 3151
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3146
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 3146
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

    .prologue
    .line 3197
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3198
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3201
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 3

    .prologue
    .line 3154
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>()V

    .line 3155
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 3156
    return-object v0
.end method


# virtual methods
.method public addAllValue(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter
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

    .prologue
    .line 3351
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3352
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3354
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3355
    return-object p0
.end method

.method public addValue(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3343
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3344
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3346
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3347
    return-object p0
.end method

.method public addValue(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3333
    if-nez p1, :cond_0

    .line 3334
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3336
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3337
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3339
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3340
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3190
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3192
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 3

    .prologue
    .line 3205
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-nez v1, :cond_0

    .line 3206
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3209
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 3210
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3213
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 3214
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 3215
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3164
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-nez v0, :cond_0

    .line 3165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3168
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 3169
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3306
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7202(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    .line 3307
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7302(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 3308
    return-object p0
.end method

.method public clearOptions()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3394
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7402(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    .line 3395
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7502(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    .line 3396
    return-object p0
.end method

.method public clearValue()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3358
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3359
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3173
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3146
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

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 3182
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3178
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3295
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 3367
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    .prologue
    .line 3316
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

    .prologue
    .line 3313
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

    .prologue
    .line 3292
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 3364
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 3160
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3146
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3186
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

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
    .line 3146
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3146
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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
    .line 3146
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3249
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 3253
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3254
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 3259
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3261
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 3262
    :goto_1
    return-object p0

    .line 3256
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 3267
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    goto :goto_0

    .line 3271
    :sswitch_2
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    .line 3272
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 3273
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->addValue(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    goto :goto_0

    .line 3277
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    :sswitch_3
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    .line 3278
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3279
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    .line 3281
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 3282
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setOptions(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    goto :goto_0

    .line 3254
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
    .parameter "other"

    .prologue
    .line 3228
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3242
    :goto_0
    return-object p0

    .line 3229
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3230
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    .line 3232
    :cond_1
    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3233
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3234
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7102(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3236
    :cond_2
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3238
    :cond_3
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3239
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeOptions(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    .line 3241
    :cond_4
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3219
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_0

    .line 3220
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object p0

    .line 3223
    .end local p0
    :goto_0
    return-object p0

    .line 3222
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

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
    .line 3146
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3146
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

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
    .line 3146
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3383
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

    .line 3385
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

    .line 3390
    :goto_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7402(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    .line 3391
    return-object p0

    .line 3388
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7502(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3298
    if-nez p1, :cond_0

    .line 3299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3301
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7202(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    .line 3302
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7302(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 3303
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3378
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7402(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    .line 3379
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7502(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    .line 3380
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3370
    if-nez p1, :cond_0

    .line 3371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3373
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7402(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Z)Z

    .line 3374
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7502(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    .line 3375
    return-object p0
.end method

.method public setValue(ILcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3329
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3330
    return-object p0
.end method

.method public setValue(ILcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3322
    if-nez p2, :cond_0

    .line 3323
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3325
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->access$7100(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3326
    return-object p0
.end method
