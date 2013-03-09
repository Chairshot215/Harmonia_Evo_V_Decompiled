.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttributeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenericAttribute"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;


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
    .line 1708
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->PARSER:Lcom/google/protobuf/Parser;

    .line 2118
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    .line 2119
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->initFields()V

    .line 2120
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

    .line 1669
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1794
    iput-byte v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->memoizedIsInitialized:B

    .line 1822
    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->memoizedSerializedSize:I

    .line 1670
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->initFields()V

    .line 1671
    const/4 v2, 0x0

    .line 1673
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 1674
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1675
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1676
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 1681
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1683
    const/4 v0, 0x1

    goto :goto_0

    .line 1678
    :sswitch_0
    const/4 v0, 0x1

    .line 1679
    goto :goto_0

    .line 1688
    :sswitch_1
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->bitField0_:I

    .line 1689
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->name_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1699
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 1700
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1705
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->makeExtensionsImmutable()V

    throw v4

    .line 1693
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->bitField0_:I

    .line 1694
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->value_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1701
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 1702
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

    .line 1705
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->makeExtensionsImmutable()V

    .line 1707
    return-void

    .line 1676
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
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
    .line 1647
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1652
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1794
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->memoizedIsInitialized:B

    .line 1822
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->memoizedSerializedSize:I

    .line 1654
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1647
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1655
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1794
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->memoizedIsInitialized:B

    .line 1822
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->memoizedSerializedSize:I

    .line 1655
    return-void
.end method

.method static synthetic access$1900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->value_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1647
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;
    .locals 1

    .prologue
    .line 1659
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1791
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->name_:Ljava/lang/Object;

    .line 1792
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->value_:Ljava/lang/Object;

    .line 1793
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 1

    .prologue
    .line 1899
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->access$1700()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1902
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1647
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;
    .locals 1

    .prologue
    .line 1663
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1746
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->name_:Ljava/lang/Object;

    .line 1747
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1748
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1750
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->name_:Ljava/lang/Object;

    .line 1753
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

    .line 1824
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->memoizedSerializedSize:I

    .line 1825
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1837
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1827
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1828
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1829
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1832
    :cond_1
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1836
    :cond_2
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->memoizedSerializedSize:I

    move v1, v0

    .line 1837
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1779
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->value_:Ljava/lang/Object;

    .line 1780
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1781
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1783
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->value_:Ljava/lang/Object;

    .line 1786
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

    .line 1728
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->bitField0_:I

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
    .line 1761
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->bitField0_:I

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

    .line 1796
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->memoizedIsInitialized:B

    .line 1797
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 1808
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1797
    goto :goto_0

    .line 1799
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->hasName()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1800
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->memoizedIsInitialized:B

    move v1, v2

    .line 1801
    goto :goto_0

    .line 1803
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->hasValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1804
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->memoizedIsInitialized:B

    move v1, v2

    .line 1805
    goto :goto_0

    .line 1807
    :cond_3
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1647
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 1

    .prologue
    .line 1900
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1647
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;
    .locals 1

    .prologue
    .line 1904
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute$Builder;

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
    .line 1843
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

    .line 1813
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->getSerializedSize()I

    .line 1814
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1815
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1817
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1818
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1820
    :cond_1
    return-void
.end method
