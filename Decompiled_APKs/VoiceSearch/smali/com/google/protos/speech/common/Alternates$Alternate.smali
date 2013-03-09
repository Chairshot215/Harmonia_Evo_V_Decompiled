.class public final Lcom/google/protos/speech/common/Alternates$Alternate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$AlternateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alternate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/common/Alternates$Alternate;


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private text_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1669
    new-instance v0, Lcom/google/protos/speech/common/Alternates$Alternate$1;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$Alternate$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    .line 2014
    new-instance v0, Lcom/google/protos/speech/common/Alternates$Alternate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/common/Alternates$Alternate;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->defaultInstance:Lcom/google/protos/speech/common/Alternates$Alternate;

    .line 2015
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->defaultInstance:Lcom/google/protos/speech/common/Alternates$Alternate;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$Alternate;->initFields()V

    .line 2016
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

    .line 1630
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1732
    iput-byte v4, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedIsInitialized:B

    .line 1756
    iput v4, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedSerializedSize:I

    .line 1631
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->initFields()V

    .line 1632
    const/4 v2, 0x0

    .line 1634
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 1635
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1636
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1637
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 1642
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/common/Alternates$Alternate;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1644
    const/4 v0, 0x1

    goto :goto_0

    .line 1639
    :sswitch_0
    const/4 v0, 0x1

    .line 1640
    goto :goto_0

    .line 1649
    :sswitch_1
    iget v4, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    .line 1650
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1660
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 1661
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1666
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->makeExtensionsImmutable()V

    throw v4

    .line 1654
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    .line 1655
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->confidence_:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1662
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 1663
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

    .line 1666
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->makeExtensionsImmutable()V

    .line 1668
    return-void

    .line 1637
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/common/Alternates$1;)V
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
    .line 1608
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$Alternate;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1613
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1732
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedIsInitialized:B

    .line 1756
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedSerializedSize:I

    .line 1615
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1608
    invoke-direct {p0, p1}, Lcom/google/protos/speech/common/Alternates$Alternate;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1616
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1732
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedIsInitialized:B

    .line 1756
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedSerializedSize:I

    .line 1616
    return-void
.end method

.method static synthetic access$2500(Lcom/google/protos/speech/common/Alternates$Alternate;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/protos/speech/common/Alternates$Alternate;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1608
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/protos/speech/common/Alternates$Alternate;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1608
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->confidence_:F

    return p1
.end method

.method static synthetic access$2702(Lcom/google/protos/speech/common/Alternates$Alternate;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1608
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1

    .prologue
    .line 1620
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->defaultInstance:Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1729
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;

    .line 1730
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->confidence_:F

    .line 1731
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1

    .prologue
    .line 1833
    #calls: Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->create()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->access$2300()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1836
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate;->newBuilder()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/common/Alternates$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfidence()F
    .locals 1

    .prologue
    .line 1725
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->confidence_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1608
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$Alternate;
    .locals 1

    .prologue
    .line 1624
    sget-object v0, Lcom/google/protos/speech/common/Alternates$Alternate;->defaultInstance:Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1758
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedSerializedSize:I

    .line 1759
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1771
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1761
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1762
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1763
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1766
    :cond_1
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1767
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->confidence_:F

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 1770
    :cond_2
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedSerializedSize:I

    move v1, v0

    .line 1771
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1692
    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;

    .line 1693
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1694
    check-cast v1, Ljava/lang/String;

    .line 1702
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1696
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1698
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1699
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1700
    iput-object v2, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1702
    goto :goto_0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1707
    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;

    .line 1708
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1709
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1711
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->text_:Ljava/lang/Object;

    .line 1714
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

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 1722
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

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

.method public hasText()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1689
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1734
    iget-byte v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedIsInitialized:B

    .line 1735
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 1742
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1735
    goto :goto_0

    .line 1737
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->hasText()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1738
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedIsInitialized:B

    move v1, v2

    .line 1739
    goto :goto_0

    .line 1741
    :cond_2
    iput-byte v1, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1608
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->newBuilderForType()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1

    .prologue
    .line 1834
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$Alternate;->newBuilder()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1608
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->toBuilder()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/common/Alternates$Alternate$Builder;
    .locals 1

    .prologue
    .line 1838
    invoke-static {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->newBuilder(Lcom/google/protos/speech/common/Alternates$Alternate;)Lcom/google/protos/speech/common/Alternates$Alternate$Builder;

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
    .line 1777
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

    .line 1747
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->getSerializedSize()I

    .line 1748
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1749
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$Alternate;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1751
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1752
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$Alternate;->confidence_:F

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1754
    :cond_1
    return-void
.end method
