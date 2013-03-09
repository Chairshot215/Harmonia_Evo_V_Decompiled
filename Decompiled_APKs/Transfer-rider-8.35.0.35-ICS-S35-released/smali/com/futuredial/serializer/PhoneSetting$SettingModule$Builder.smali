.class public final Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PhoneSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/PhoneSetting$SettingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;)Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->create()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 3

    .prologue
    .line 224
    new-instance v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    invoke-direct {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;-><init>()V

    .line 225
    .local v0, builder:Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    new-instance v1, Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;-><init>(Lcom/futuredial/serializer/PhoneSetting$1;)V

    iput-object v1, v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 226
    return-object v0
.end method


# virtual methods
.method public addAllComUuid(Ljava/lang/Iterable;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$500(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$502(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/util/List;)Ljava/util/List;

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$500(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 463
    return-object p0
.end method

.method public addComUuid(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 448
    if-nez p1, :cond_0

    .line 449
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$500(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$502(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/util/List;)Ljava/util/List;

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$500(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    return-object p0
.end method

.method public build()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 3

    .prologue
    .line 275
    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$500(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 280
    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    iget-object v2, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v2}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$500(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$502(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/util/List;)Ljava/util/List;

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 284
    .local v0, returnMe:Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 285
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    new-instance v0, Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;-><init>(Lcom/futuredial/serializer/PhoneSetting$1;)V

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .line 239
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->clear()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->clear()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->clear()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearComClassName()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComClassName:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$802(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Z)Z

    .line 405
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComClassName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comClassName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$902(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    return-object p0
.end method

.method public clearComPolicy()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComPolicy:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$1002(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Z)Z

    .line 426
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComPolicy()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comPolicy_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$1102(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    return-object p0
.end method

.method public clearComUuid()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$502(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/util/List;)Ljava/util/List;

    .line 467
    return-object p0
.end method

.method public clearModuleType()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasModuleType:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$602(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Z)Z

    .line 384
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getModuleType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->moduleType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$702(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    return-object p0
.end method

.method public clearParserClassName()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasParserClassName:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$1202(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Z)Z

    .line 487
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getParserClassName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->parserClassName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$1302(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/lang/String;)Ljava/lang/String;

    .line 488
    return-object p0
.end method

.method public clone()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->create()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-virtual {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

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
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getComClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComPolicy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComUuid(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-virtual {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComUuid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComUuidCount()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComUuidCount()I

    move-result v0

    return v0
.end method

.method public getComUuidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$500(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getModuleType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getModuleType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParserClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getParserClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasComClassName()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComClassName()Z

    move-result v0

    return v0
.end method

.method public hasComPolicy()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComPolicy()Z

    move-result v0

    return v0
.end method

.method public hasModuleType()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasModuleType()Z

    move-result v0

    return v0
.end method

.method public hasParserClassName()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasParserClassName()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/futuredial/serializer/PhoneSetting$SettingModule;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->internalGetResult()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 298
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 318
    :goto_0
    return-object p0

    .line 299
    :cond_0
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasModuleType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getModuleType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->setModuleType(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    .line 302
    :cond_1
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComClassName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->setComClassName(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    .line 305
    :cond_2
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComPolicy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getComPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->setComPolicy(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    .line 308
    :cond_3
    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$500(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 309
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$500(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$502(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/util/List;)Ljava/util/List;

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$500(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$500(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    :cond_5
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasParserClassName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getParserClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->setParserClassName(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    .line 317
    :cond_6
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 329
    .local v1, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 330
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 335
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 338
    :goto_1
    return-object p0

    .line 332
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 343
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->setModuleType(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    goto :goto_0

    .line 347
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->setComClassName(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    goto :goto_0

    .line 351
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->setComPolicy(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    goto :goto_0

    .line 355
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->addComUuid(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    goto :goto_0

    .line 359
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->setParserClassName(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    goto :goto_0

    .line 330
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 289
    instance-of v0, p1, Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    if-eqz v0, :cond_0

    .line 290
    check-cast p1, Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object p0

    .line 293
    .end local p0
    :goto_0
    return-object p0

    .line 292
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
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
    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

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
    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
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
    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

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
    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setComClassName(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 396
    if-nez p1, :cond_0

    .line 397
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComClassName:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$802(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Z)Z

    .line 400
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comClassName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$902(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    return-object p0
.end method

.method public setComPolicy(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasComPolicy:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$1002(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Z)Z

    .line 421
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comPolicy_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$1102(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    return-object p0
.end method

.method public setComUuid(ILjava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 441
    if-nez p2, :cond_0

    .line 442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->comUuid_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$500(Lcom/futuredial/serializer/PhoneSetting$SettingModule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 445
    return-object p0
.end method

.method public setModuleType(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasModuleType:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$602(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Z)Z

    .line 379
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->moduleType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$702(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    return-object p0
.end method

.method public setParserClassName(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->hasParserClassName:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$1202(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Z)Z

    .line 482
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$SettingModule$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$SettingModule;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$SettingModule;->parserClassName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$SettingModule;->access$1302(Lcom/futuredial/serializer/PhoneSetting$SettingModule;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    return-object p0
.end method
