.class public final Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$AlternateSpanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates$AlternateSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
        "Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;",
        ">;",
        "Lcom/google/protos/speech/common/Alternates$AlternateSpanOrBuilder;"
    }
.end annotation


# instance fields
.field private alternates_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private confidence_:F

.field private length_:I

.field private start_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1307
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1475
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    .line 1308
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->maybeForceBuilderInitialization()V

    .line 1309
    return-void
.end method

.method static synthetic access$1500()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1302
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->create()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1314
    new-instance v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAlternatesIsMutable()V
    .locals 2

    .prologue
    .line 1478
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1479
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    .line 1480
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1482
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1312
    return-void
.end method


# virtual methods
.method public addAllAlternates(Ljava/lang/Iterable;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;)",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;"
        }
    .end annotation

    .prologue
    .line 1545
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protos/speech/common/Alternates$Alternate;>;"
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->ensureAlternatesIsMutable()V

    .line 1546
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1548
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->build()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 2

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    .line 1340
    .local v0, result:Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1341
    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1343
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 5

    .prologue
    .line 1347
    new-instance v1, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V

    .line 1348
    .local v1, result:Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1349
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1350
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1351
    or-int/lit8 v2, v2, 0x1

    .line 1353
    :cond_0
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->start_:I

    #setter for: Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$1702(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I

    .line 1354
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1355
    or-int/lit8 v2, v2, 0x2

    .line 1357
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->length_:I

    #setter for: Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$1802(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I

    .line 1358
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1359
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    .line 1360
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1362
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    #setter for: Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$1902(Lcom/google/protos/speech/common/Alternates$AlternateSpan;Ljava/util/List;)Ljava/util/List;

    .line 1363
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1364
    or-int/lit8 v2, v2, 0x4

    .line 1366
    :cond_3
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->confidence_:F

    #setter for: Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$2002(Lcom/google/protos/speech/common/Alternates$AlternateSpan;F)F

    .line 1367
    #setter for: Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$2102(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I

    .line 1368
    return-object v1
.end method

.method public clearAlternates()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1

    .prologue
    .line 1551
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    .line 1552
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1554
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->clone()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->clone()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 2

    .prologue
    .line 1331
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->create()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

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
    .line 1302
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->clone()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlternates(I)Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1
    .parameter "index"

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object v0
.end method

.method public getAlternatesCount()I
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1

    .prologue
    .line 1335
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public hasLength()Z
    .locals 2

    .prologue
    .line 1456
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStart()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1435
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1396
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->hasStart()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return v1

    .line 1400
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->hasLength()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1404
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->getAlternatesCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1405
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->getAlternates(I)Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/speech/common/Alternates$Alternate;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1404
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1410
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
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
    .line 1302
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1302
    check-cast p1, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

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
    .line 1302
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1417
    const/4 v2, 0x0

    .line 1419
    .local v2, parsedMessage:Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1424
    if-eqz v2, :cond_0

    .line 1425
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    .line 1428
    :cond_0
    return-object p0

    .line 1420
    :catch_0
    move-exception v1

    .line 1421
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-object v2, v0

    .line 1422
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1424
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1425
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1372
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return-object p0

    .line 1373
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1374
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->setStart(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    .line 1376
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->hasLength()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1377
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->setLength(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    .line 1379
    :cond_3
    #getter for: Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$1900(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1380
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1381
    #getter for: Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$1900(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    .line 1382
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1389
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getConfidence()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->setConfidence(F)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    goto :goto_0

    .line 1384
    :cond_5
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->ensureAlternatesIsMutable()V

    .line 1385
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->alternates_:Ljava/util/List;

    #getter for: Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->access$1900(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setConfidence(F)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1572
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1573
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->confidence_:F

    .line 1575
    return-object p0
.end method

.method public setLength(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1462
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1463
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->length_:I

    .line 1465
    return-object p0
.end method

.method public setStart(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1441
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->bitField0_:I

    .line 1442
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->start_:I

    .line 1444
    return-object p0
.end method
