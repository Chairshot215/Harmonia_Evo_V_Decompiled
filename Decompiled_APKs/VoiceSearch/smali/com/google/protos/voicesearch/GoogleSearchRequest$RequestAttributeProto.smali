.class public final Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GoogleSearchRequest.java"

# interfaces
.implements Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/voicesearch/GoogleSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestAttributeProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1459
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$1;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1869
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    .line 1870
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->initFields()V

    .line 1871
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 1420
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1545
    iput-byte v4, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedIsInitialized:B

    .line 1573
    iput v4, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedSerializedSize:I

    .line 1421
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->initFields()V

    .line 1422
    const/4 v2, 0x0

    .line 1424
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 1425
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1426
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1427
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 1432
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1434
    const/4 v0, 0x1

    goto :goto_0

    .line 1429
    :sswitch_0
    const/4 v0, 0x1

    .line 1430
    goto :goto_0

    .line 1439
    :sswitch_1
    iget v4, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    .line 1440
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1450
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 1451
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1456
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->makeExtensionsImmutable()V

    throw v4

    .line 1444
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    .line 1445
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1452
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 1453
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1456
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->makeExtensionsImmutable()V

    .line 1458
    return-void

    .line 1427
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/voicesearch/GoogleSearchRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1398
    invoke-direct {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1403
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1545
    iput-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedIsInitialized:B

    .line 1573
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedSerializedSize:I

    .line 1405
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/voicesearch/GoogleSearchRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1398
    invoke-direct {p0, p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1406
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1545
    iput-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedIsInitialized:B

    .line 1573
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedSerializedSize:I

    .line 1406
    return-void
.end method

.method static synthetic access$1600(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1398
    iput p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1

    .prologue
    .line 1410
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1542
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;

    .line 1543
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;

    .line 1544
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 1

    .prologue
    .line 1650
    #calls: Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->create()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->access$1400()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1653
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1398
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1

    .prologue
    .line 1414
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1497
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;

    .line 1498
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1499
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1501
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;

    .line 1504
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1575
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedSerializedSize:I

    .line 1576
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1588
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1578
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1579
    iget v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1580
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1583
    :cond_1
    iget v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1584
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1587
    :cond_2
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedSerializedSize:I

    move v1, v0

    .line 1588
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1530
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;

    .line 1531
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1532
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1534
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;

    .line 1537
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1479
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 1512
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1547
    iget-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedIsInitialized:B

    .line 1548
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 1559
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1548
    goto :goto_0

    .line 1550
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->hasName()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1551
    iput-byte v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedIsInitialized:B

    move v1, v2

    .line 1552
    goto :goto_0

    .line 1554
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->hasValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1555
    iput-byte v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedIsInitialized:B

    move v1, v2

    .line 1556
    goto :goto_0

    .line 1558
    :cond_3
    iput-byte v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1398
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->newBuilderForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 1

    .prologue
    .line 1651
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1398
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->toBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 1

    .prologue
    .line 1655
    invoke-static {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->newBuilder(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1594
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1564
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->getSerializedSize()I

    .line 1565
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1566
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1568
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1569
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1571
    :cond_1
    return-void
.end method
