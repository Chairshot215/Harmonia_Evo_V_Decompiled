.class public final Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PhoneSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/serializer/PhoneSetting$Setting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/futuredial/serializer/PhoneSetting$Setting;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1426
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3700(Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;)Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1421
    invoke-direct {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildParsed()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 1

    .prologue
    .line 1421
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->create()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1476
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 3

    .prologue
    .line 1429
    new-instance v0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    invoke-direct {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;-><init>()V

    .line 1430
    .local v0, builder:Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    new-instance v1, Lcom/futuredial/serializer/PhoneSetting$Setting;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/futuredial/serializer/PhoneSetting$Setting;-><init>(Lcom/futuredial/serializer/PhoneSetting$1;)V

    iput-object v1, v0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    .line 1431
    return-object v0
.end method


# virtual methods
.method public addAllSettingTypes(Ljava/lang/Iterable;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/futuredial/serializer/PhoneSetting$SettingType;",
            ">;)",
            "Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;"
        }
    .end annotation

    .prologue
    .line 1614
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/futuredial/serializer/PhoneSetting$SettingType;>;"
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4002(Lcom/futuredial/serializer/PhoneSetting$Setting;Ljava/util/List;)Ljava/util/List;

    .line 1617
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1618
    return-object p0
.end method

.method public addSettingTypes(Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4002(Lcom/futuredial/serializer/PhoneSetting$Setting;Ljava/util/List;)Ljava/util/List;

    .line 1609
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    return-object p0
.end method

.method public addSettingTypes(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1596
    if-nez p1, :cond_0

    .line 1597
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1599
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1600
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4002(Lcom/futuredial/serializer/PhoneSetting$Setting;Ljava/util/List;)Ljava/util/List;

    .line 1602
    :cond_1
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    return-object p0
.end method

.method public build()Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1467
    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 3

    .prologue
    .line 1480
    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    if-nez v1, :cond_0

    .line 1481
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1484
    :cond_0
    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1485
    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    iget-object v2, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v2}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4002(Lcom/futuredial/serializer/PhoneSetting$Setting;Ljava/util/List;)Ljava/util/List;

    .line 1488
    :cond_1
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    .line 1489
    .local v0, returnMe:Lcom/futuredial/serializer/PhoneSetting$Setting;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    .line 1490
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 2

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    if-nez v0, :cond_0

    .line 1440
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1443
    :cond_0
    new-instance v0, Lcom/futuredial/serializer/PhoneSetting$Setting;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$Setting;-><init>(Lcom/futuredial/serializer/PhoneSetting$1;)V

    iput-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    .line 1444
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->clear()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->clear()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->clear()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSettingTypes()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 2

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4002(Lcom/futuredial/serializer/PhoneSetting$Setting;Ljava/util/List;)Ljava/util/List;

    .line 1622
    return-object p0
.end method

.method public clearTypeMapToIndex()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 2

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    const/4 v1, 0x0

    #setter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->hasTypeMapToIndex:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4102(Lcom/futuredial/serializer/PhoneSetting$Setting;Z)Z

    .line 1570
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getTypeMapToIndex()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->typeMapToIndex_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4202(Lcom/futuredial/serializer/PhoneSetting$Setting;Ljava/lang/String;)Ljava/lang/String;

    .line 1571
    return-object p0
.end method

.method public clone()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 2

    .prologue
    .line 1448
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->create()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    invoke-virtual {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$Setting;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

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
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->clone()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1

    .prologue
    .line 1457
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->getDefaultInstanceForType()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1453
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSettingTypes(I)Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 1
    .parameter "index"

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    invoke-virtual {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getSettingTypes(I)Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method public getSettingTypesCount()I
    .locals 1

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getSettingTypesCount()I

    move-result v0

    return v0
.end method

.method public getSettingTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/futuredial/serializer/PhoneSetting$SettingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeMapToIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getTypeMapToIndex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasTypeMapToIndex()Z
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->hasTypeMapToIndex()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/futuredial/serializer/PhoneSetting$Setting;
    .locals 1

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1421
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->internalGetResult()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/futuredial/serializer/PhoneSetting$Setting;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1503
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getDefaultInstance()Lcom/futuredial/serializer/PhoneSetting$Setting;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1514
    :goto_0
    return-object p0

    .line 1504
    :cond_0
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->hasTypeMapToIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1505
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getTypeMapToIndex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->setTypeMapToIndex(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    .line 1507
    :cond_1
    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {p1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1508
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1509
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4002(Lcom/futuredial/serializer/PhoneSetting$Setting;Ljava/util/List;)Ljava/util/List;

    .line 1511
    :cond_2
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {p1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1513
    :cond_3
    invoke-virtual {p1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 1525
    .local v2, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1526
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1531
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1533
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1534
    :goto_1
    return-object p0

    .line 1528
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 1539
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->setTypeMapToIndex(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    goto :goto_0

    .line 1543
    :sswitch_2
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$SettingType;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;

    move-result-object v0

    .line 1544
    .local v0, subBuilder:Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1545
    invoke-virtual {v0}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->buildPartial()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->addSettingTypes(Lcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    goto :goto_0

    .line 1526
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1494
    instance-of v0, p1, Lcom/futuredial/serializer/PhoneSetting$Setting;

    if-eqz v0, :cond_0

    .line 1495
    check-cast p1, Lcom/futuredial/serializer/PhoneSetting$Setting;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Lcom/futuredial/serializer/PhoneSetting$Setting;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object p0

    .line 1498
    .end local p0
    :goto_0
    return-object p0

    .line 1497
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
    .line 1421
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1421
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

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
    .line 1421
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

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
    .line 1421
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1421
    invoke-virtual {p0, p1}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

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
    .line 1421
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSettingTypes(ILcom/futuredial/serializer/PhoneSetting$SettingType$Builder;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/futuredial/serializer/PhoneSetting$SettingType$Builder;->build()Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1593
    return-object p0
.end method

.method public setSettingTypes(ILcom/futuredial/serializer/PhoneSetting$SettingType;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1585
    if-nez p2, :cond_0

    .line 1586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    #getter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->settingTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4000(Lcom/futuredial/serializer/PhoneSetting$Setting;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1589
    return-object p0
.end method

.method public setTypeMapToIndex(Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1561
    if-nez p1, :cond_0

    .line 1562
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    const/4 v1, 0x1

    #setter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->hasTypeMapToIndex:Z
    invoke-static {v0, v1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4102(Lcom/futuredial/serializer/PhoneSetting$Setting;Z)Z

    .line 1565
    iget-object v0, p0, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->result:Lcom/futuredial/serializer/PhoneSetting$Setting;

    #setter for: Lcom/futuredial/serializer/PhoneSetting$Setting;->typeMapToIndex_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/futuredial/serializer/PhoneSetting$Setting;->access$4202(Lcom/futuredial/serializer/PhoneSetting$Setting;Ljava/lang/String;)Ljava/lang/String;

    .line 1566
    return-object p0
.end method
