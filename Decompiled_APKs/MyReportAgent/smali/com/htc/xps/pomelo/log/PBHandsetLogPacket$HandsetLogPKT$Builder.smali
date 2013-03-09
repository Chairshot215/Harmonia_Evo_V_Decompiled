.class public final Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "PBHandsetLogPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->create()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 3

    .prologue
    .line 202
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;-><init>()V

    .line 203
    .local v0, builder:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    new-instance v1, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;-><init>(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$1;)V

    iput-object v1, v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    .line 204
    return-object v0
.end method


# virtual methods
.method public addAllPayload(Ljava/lang/Iterable;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;",
            ">;)",
            "Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;>;"
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$502(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/util/List;)Ljava/util/List;

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 454
    return-object p0
.end method

.method public addPayload(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$502(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/util/List;)Ljava/util/List;

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->build()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    return-object p0
.end method

.method public addPayload(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 432
    if-nez p1, :cond_0

    .line 433
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$502(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/util/List;)Ljava/util/List;

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    return-object p0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    if-nez v1, :cond_0

    .line 254
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 258
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    iget-object v2, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$502(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/util/List;)Ljava/util/List;

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    .line 262
    .local v0, returnMe:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    .line 263
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->clear()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->clear()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->clear()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;-><init>(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$1;)V

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    .line 217
    return-object p0
.end method

.method public clearCheckSum()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 492
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasCheckSum:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$1202(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Z)Z

    .line 493
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->checkSum_:I
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$1302(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;I)I

    .line 494
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$802(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Z)Z

    .line 406
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->deviceInfo_:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$902(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    .line 407
    return-object p0
.end method

.method public clearLookup()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasLookup:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$1002(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Z)Z

    .line 475
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->lookup_:I
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$1102(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;I)I

    .line 476
    return-object p0
.end method

.method public clearPayload()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$502(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/util/List;)Ljava/util/List;

    .line 458
    return-object p0
.end method

.method public clearVersion()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$602(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Z)Z

    .line 369
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getVersion()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->version_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$702(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2

    .prologue
    .line 221
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->create()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

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
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCheckSum()I
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getCheckSum()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDeviceInfo()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLookup()I
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getLookup()I

    move-result v0

    return v0
.end method

.method public getPayload(I)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    .locals 1
    .parameter "index"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-virtual {v0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getPayload(I)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadCount()I
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getPayloadCount()I

    move-result v0

    return v0
.end method

.method public getPayloadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCheckSum()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasCheckSum()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasLookup()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasLookup()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->internalGetResult()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeDeviceInfo(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->deviceInfo_:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$900(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->deviceInfo_:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$900(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->deviceInfo_:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$902(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$802(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Z)Z

    .line 402
    return-object p0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->deviceInfo_:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$902(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    goto :goto_0
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
    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

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
    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
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
    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

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
    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 307
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 308
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 313
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 316
    :goto_1
    return-object p0

    .line 310
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 321
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->setVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    goto :goto_0

    .line 325
    :sswitch_2
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    move-result-object v0

    .line 326
    .local v0, subBuilder:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->hasDeviceInfo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->getDeviceInfo()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;

    .line 329
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 330
    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->setDeviceInfo(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    goto :goto_0

    .line 334
    .end local v0           #subBuilder:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;
    :sswitch_3
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    .line 335
    .local v0, subBuilder:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 336
    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->addPayload(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    goto :goto_0

    .line 340
    .end local v0           #subBuilder:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->setLookup(I)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    goto :goto_0

    .line 344
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readSInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->setCheckSum(I)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    goto :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x5a -> :sswitch_3
        0xa8 -> :sswitch_4
        0xb0 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 267
    instance-of v0, p1, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    if-eqz v0, :cond_0

    .line 268
    check-cast p1, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object p0

    .line 271
    .end local p0
    :goto_0
    return-object p0

    .line 270
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 276
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 296
    :goto_0
    return-object p0

    .line 277
    :cond_0
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->setVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    .line 280
    :cond_1
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDeviceInfo()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeDeviceInfo(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    .line 283
    :cond_2
    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$502(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/util/List;)Ljava/util/List;

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 289
    :cond_4
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasLookup()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 290
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getLookup()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->setLookup(I)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    .line 292
    :cond_5
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasCheckSum()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 293
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getCheckSum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->setCheckSum(I)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    .line 295
    :cond_6
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setCheckSum(I)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasCheckSum:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$1202(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Z)Z

    .line 488
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->checkSum_:I
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$1302(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;I)I

    .line 489
    return-object p0
.end method

.method public setDeviceInfo(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$802(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Z)Z

    .line 390
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo$Builder;->build()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->deviceInfo_:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$902(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    .line 391
    return-object p0
.end method

.method public setDeviceInfo(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 381
    if-nez p1, :cond_0

    .line 382
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$802(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Z)Z

    .line 385
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->deviceInfo_:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$902(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    .line 386
    return-object p0
.end method

.method public setLookup(I)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasLookup:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$1002(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Z)Z

    .line 470
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->lookup_:I
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$1102(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;I)I

    .line 471
    return-object p0
.end method

.method public setPayload(ILcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->build()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 429
    return-object p0
.end method

.method public setPayload(ILcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 421
    if-nez p2, :cond_0

    .line 422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->payload_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$500(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 425
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$602(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Z)Z

    .line 364
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->version_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->access$702(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    return-object p0
.end method
