.class public final Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RecognitionResultSet.java"

# interfaces
.implements Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/multimodal/RecognitionResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionResultSetProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;


# instance fields
.field private bitField0_:I

.field private confidencehighthreshold_:I

.field private confidencelowthreshold_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private results_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 707
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$1;

    invoke-direct {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1134
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 1135
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    invoke-direct {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->initFields()V

    .line 1136
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 657
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 769
    iput-byte v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    .line 798
    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    .line 658
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->initFields()V

    .line 659
    const/4 v2, 0x0

    .line 661
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 662
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 663
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 664
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 669
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 671
    const/4 v0, 0x1

    goto :goto_0

    .line 666
    :sswitch_0
    const/4 v0, 0x1

    .line 667
    goto :goto_0

    .line 676
    :sswitch_1
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v6, :cond_1

    .line 677
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    .line 678
    or-int/lit8 v2, v2, 0x1

    .line 680
    :cond_1
    iget-object v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 695
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 696
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v6, :cond_2

    .line 702
    iget-object v5, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    .line 704
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->makeExtensionsImmutable()V

    throw v4

    .line 684
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    .line 685
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 697
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 698
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

    .line 689
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_4
    iget v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    .line 690
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 701
    .end local v3           #tag:I
    :cond_3
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v6, :cond_4

    .line 702
    iget-object v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    .line 704
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->makeExtensionsImmutable()V

    .line 706
    return-void

    .line 664
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/multimodal/RecognitionResultSet$1;)V
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
    .line 635
    invoke-direct {p0, p1, p2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 640
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 769
    iput-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    .line 798
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    .line 642
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/multimodal/RecognitionResultSet$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 643
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 769
    iput-byte v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    .line 798
    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    .line 643
    return-void
.end method

.method static synthetic access$1100(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 635
    iput-object p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 635
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 635
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 635
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1

    .prologue
    .line 647
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 765
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    .line 766
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    .line 767
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    .line 768
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1

    .prologue
    .line 879
    #calls: Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->create()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->access$900()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 882
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfidencehighthreshold()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    return v0
.end method

.method public getConfidencelowthreshold()I
    .locals 1

    .prologue
    .line 761
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1

    .prologue
    .line 651
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->defaultInstance:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object v0
.end method

.method public getResults(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object v0
.end method

.method public getResultsCount()I
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 800
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    .line 801
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 817
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 803
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 804
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 805
    iget-object v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 808
    :cond_1
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    .line 809
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 812
    :cond_2
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3

    .line 813
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 816
    :cond_3
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedSerializedSize:I

    move v2, v1

    .line 817
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public hasConfidencehighthreshold()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 748
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConfidencelowthreshold()Z
    .locals 2

    .prologue
    .line 758
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

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
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 771
    iget-byte v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    .line 772
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 781
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 772
    goto :goto_0

    .line 774
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getResultsCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 775
    invoke-virtual {p0, v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getResults(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 776
    iput-byte v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    move v2, v3

    .line 777
    goto :goto_0

    .line 774
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 780
    :cond_3
    iput-byte v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilderForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1

    .prologue
    .line 880
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->toBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1

    .prologue
    .line 884
    invoke-static {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilder(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

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
    .line 823
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 786
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getSerializedSize()I

    .line 787
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 788
    iget-object v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 790
    :cond_0
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 791
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 793
    :cond_1
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 794
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 796
    :cond_2
    return-void
.end method
