.class public final Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "PBHandsetPolicyPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1407
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1402
    invoke-direct {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 1

    .prologue
    .line 1402
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->create()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1453
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1457
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 3

    .prologue
    .line 1410
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;-><init>()V

    .line 1411
    .local v0, builder:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    new-instance v1, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;-><init>(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$1;)V

    iput-object v1, v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    .line 1412
    return-object v0
.end method


# virtual methods
.method public addAllCategoryItem(Ljava/lang/Iterable;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;",
            ">;)",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;"
        }
    .end annotation

    .prologue
    .line 1620
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;>;"
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Ljava/util/List;)Ljava/util/List;

    .line 1623
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1624
    return-object p0
.end method

.method public addCategoryItem(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Ljava/util/List;)Ljava/util/List;

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1616
    return-object p0
.end method

.method public addCategoryItem(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1602
    if-nez p1, :cond_0

    .line 1603
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1605
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1606
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Ljava/util/List;)Ljava/util/List;

    .line 1608
    :cond_1
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1609
    return-object p0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1446
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1448
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 3

    .prologue
    .line 1461
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    if-nez v1, :cond_0

    .line 1462
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1465
    :cond_0
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1466
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    iget-object v2, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Ljava/util/List;)Ljava/util/List;

    .line 1469
    :cond_1
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    .line 1470
    .local v0, returnMe:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    .line 1471
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->clear()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->clear()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->clear()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 2

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    if-nez v0, :cond_0

    .line 1421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1424
    :cond_0
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;-><init>(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$1;)V

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    .line 1425
    return-object p0
.end method

.method public clearAppId()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 2

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3702(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Z)Z

    .line 1558
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3802(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1559
    return-object p0
.end method

.method public clearCategoryItem()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 2

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Ljava/util/List;)Ljava/util/List;

    .line 1628
    return-object p0
.end method

.method public clearEndTime()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 3

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    const/4 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasEndTime:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3902(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Z)Z

    .line 1576
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->endTime_:J
    invoke-static {v0, v1, v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$4002(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;J)J

    .line 1577
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 2

    .prologue
    .line 1429
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->create()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

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
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->clone()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryItem(I)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    invoke-virtual {v0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getCategoryItem(I)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryItemCount()I
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getCategoryItemCount()I

    move-result v0

    return v0
.end method

.method public getCategoryItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1

    .prologue
    .line 1438
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1434
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getEndTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasEndTime()Z
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasEndTime()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->internalGetResult()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->isInitialized()Z

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
    .line 1402
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1402
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

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
    .line 1402
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

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
    .line 1402
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1402
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

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
    .line 1402
    invoke-virtual {p0, p1, p2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1505
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1509
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1510
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1515
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1517
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 1518
    :goto_1
    return-object p0

    .line 1512
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 1523
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    goto :goto_0

    .line 1527
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->setEndTime(J)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    goto :goto_0

    .line 1531
    :sswitch_3
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;

    move-result-object v0

    .line 1532
    .local v0, subBuilder:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1533
    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->buildPartial()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->addCategoryItem(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    goto :goto_0

    .line 1510
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1475
    instance-of v0, p1, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    if-eqz v0, :cond_0

    .line 1476
    check-cast p1, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeFrom(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    move-result-object p0

    .line 1479
    .end local p0
    :goto_0
    return-object p0

    .line 1478
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1484
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getDefaultInstance()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1498
    :goto_0
    return-object p0

    .line 1485
    :cond_0
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1486
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    .line 1488
    :cond_1
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasEndTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1489
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getEndTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->setEndTime(J)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;

    .line 1491
    :cond_2
    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1492
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1493
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3602(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Ljava/util/List;)Ljava/util/List;

    .line 1495
    :cond_3
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1497
    :cond_4
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1549
    if-nez p1, :cond_0

    .line 1550
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1552
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3702(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Z)Z

    .line 1553
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3802(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1554
    return-object p0
.end method

.method public setCategoryItem(ILcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1599
    return-object p0
.end method

.method public setCategoryItem(ILcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppCategoryItem;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1591
    if-nez p2, :cond_0

    .line 1592
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #getter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->categoryItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3600(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1595
    return-object p0
.end method

.method public setEndTime(J)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    const/4 v1, 0x1

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->hasEndTime:Z
    invoke-static {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$3902(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;Z)Z

    .line 1571
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem$Builder;->result:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;

    #setter for: Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->endTime_:J
    invoke-static {v0, p1, p2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;->access$4002(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetAppPolicyItem;J)J

    .line 1572
    return-object p0
.end method
