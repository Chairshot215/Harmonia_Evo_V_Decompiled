.class public final Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionQualityInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;,
        Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;


# instance fields
.field private bitField0_:I

.field private correctIndex_:I

.field private correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

.field private correctResult_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private noneCorrect_:Z

.field private selectedAlternateSpans_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1951
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2566
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .line 2567
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->initFields()V

    .line 2568
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/16 v8, 0x10

    .line 1887
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2102
    iput-byte v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->memoizedIsInitialized:B

    .line 2131
    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->memoizedSerializedSize:I

    .line 1888
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->initFields()V

    .line 1889
    const/4 v2, 0x0

    .line 1891
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 1892
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1893
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 1894
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 1899
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1901
    const/4 v0, 0x1

    goto :goto_0

    .line 1896
    :sswitch_0
    const/4 v0, 0x1

    .line 1897
    goto :goto_0

    .line 1906
    :sswitch_1
    iget v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    .line 1907
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctIndex_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1939
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 1940
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1945
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    and-int/lit8 v7, v2, 0x10

    if-ne v7, v8, :cond_1

    .line 1946
    iget-object v7, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;

    .line 1948
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->makeExtensionsImmutable()V

    throw v6

    .line 1911
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    .line 1912
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->noneCorrect_:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1941
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 1942
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1916
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    iget v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    .line 1917
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResult_:Ljava/lang/Object;

    goto :goto_0

    .line 1921
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 1922
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    move-result-object v5

    .line 1923
    .local v5, value:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;
    if-eqz v5, :cond_0

    .line 1924
    iget v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    .line 1925
    iput-object v5, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    goto :goto_0

    .line 1930
    .end local v3           #rawValue:I
    .end local v5           #value:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;
    :sswitch_5
    and-int/lit8 v6, v2, 0x10

    if-eq v6, v8, :cond_2

    .line 1931
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;

    .line 1932
    or-int/lit8 v2, v2, 0x10

    .line 1934
    :cond_2
    iget-object v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;

    sget-object v7, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1945
    .end local v4           #tag:I
    :cond_3
    and-int/lit8 v6, v2, 0x10

    if-ne v6, v8, :cond_4

    .line 1946
    iget-object v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;

    .line 1948
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->makeExtensionsImmutable()V

    .line 1950
    return-void

    .line 1894
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/ClientReportProto$1;)V
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
    .line 1865
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1870
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2102
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->memoizedIsInitialized:B

    .line 2131
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->memoizedSerializedSize:I

    .line 1872
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/ClientReportProto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1865
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1873
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2102
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->memoizedIsInitialized:B

    .line 2131
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->memoizedSerializedSize:I

    .line 1873
    return-void
.end method

.method static synthetic access$2802(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1865
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctIndex_:I

    return p1
.end method

.method static synthetic access$2902(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1865
    iput-boolean p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->noneCorrect_:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResult_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1865
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResult_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1865
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1865
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1865
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    .locals 1

    .prologue
    .line 1877
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2096
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctIndex_:I

    .line 2097
    iput-boolean v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->noneCorrect_:Z

    .line 2098
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResult_:Ljava/lang/Object;

    .line 2099
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->OK:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    .line 2100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;

    .line 2101
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1

    .prologue
    .line 2220
    #calls: Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->access$2600()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2223
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCorrectIndex()I
    .locals 1

    .prologue
    .line 2018
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctIndex_:I

    return v0
.end method

.method public getCorrectResultBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2053
    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResult_:Ljava/lang/Object;

    .line 2054
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2055
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2057
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResult_:Ljava/lang/Object;

    .line 2060
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

.method public getCorrectResultStatus()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;
    .locals 1

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1865
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    .locals 1

    .prologue
    .line 1881
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    return-object v0
.end method

.method public getNoneCorrect()Z
    .locals 1

    .prologue
    .line 2028
    iget-boolean v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->noneCorrect_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2133
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->memoizedSerializedSize:I

    .line 2134
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 2158
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 2136
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 2137
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 2138
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctIndex_:I

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 2141
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 2142
    iget-boolean v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->noneCorrect_:Z

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 2145
    :cond_2
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 2146
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getCorrectResultBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2149
    :cond_3
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 2150
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    invoke-virtual {v3}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->getNumber()I

    move-result v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 2153
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2154
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2157
    :cond_5
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->memoizedSerializedSize:I

    move v2, v1

    .line 2158
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public hasCorrectIndex()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2015
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCorrectResult()Z
    .locals 2

    .prologue
    .line 2035
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCorrectResultStatus()Z
    .locals 2

    .prologue
    .line 2068
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNoneCorrect()Z
    .locals 2

    .prologue
    .line 2025
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2104
    iget-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->memoizedIsInitialized:B

    .line 2105
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 2108
    :goto_0
    return v1

    .line 2105
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2107
    :cond_1
    iput-byte v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1865
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->newBuilderForType()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1

    .prologue
    .line 2221
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1865
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->toBuilder()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1

    .prologue
    .line 2225
    invoke-static {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->newBuilder(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

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
    .line 2164
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2113
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getSerializedSize()I

    .line 2114
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 2115
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctIndex_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2117
    :cond_0
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 2118
    iget-boolean v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->noneCorrect_:Z

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2120
    :cond_1
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 2121
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getCorrectResultBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2123
    :cond_2
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 2124
    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2126
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2127
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->selectedAlternateSpans_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2129
    :cond_4
    return-void
.end method
