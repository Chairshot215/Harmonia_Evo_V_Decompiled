.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesisOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionHypothesis"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;


# instance fields
.field private bitField0_:I

.field private interpretation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sentence_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15808
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    .line 16252
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    .line 16253
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->initFields()V

    .line 16254
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

    const/4 v6, 0x2

    .line 15763
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15882
    iput-byte v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedIsInitialized:B

    .line 15912
    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedSerializedSize:I

    .line 15764
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->initFields()V

    .line 15765
    const/4 v2, 0x0

    .line 15767
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 15768
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 15769
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 15770
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 15775
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 15777
    const/4 v0, 0x1

    goto :goto_0

    .line 15772
    :sswitch_0
    const/4 v0, 0x1

    .line 15773
    goto :goto_0

    .line 15782
    :sswitch_1
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->bitField0_:I

    .line 15783
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 15796
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 15797
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15802
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    and-int/lit8 v5, v2, 0x2

    if-ne v5, v6, :cond_1

    .line 15803
    iget-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    .line 15805
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->makeExtensionsImmutable()V

    throw v4

    .line 15787
    .restart local v3       #tag:I
    :sswitch_2
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v6, :cond_2

    .line 15788
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    .line 15789
    or-int/lit8 v2, v2, 0x2

    .line 15791
    :cond_2
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 15798
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 15799
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

    .line 15802
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    and-int/lit8 v4, v2, 0x2

    if-ne v4, v6, :cond_4

    .line 15803
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    .line 15805
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->makeExtensionsImmutable()V

    .line 15807
    return-void

    .line 15770
    nop

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
    .line 15741
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 15746
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15882
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedIsInitialized:B

    .line 15912
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedSerializedSize:I

    .line 15748
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15741
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 15749
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15882
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedIsInitialized:B

    .line 15912
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedSerializedSize:I

    .line 15749
    return-void
.end method

.method static synthetic access$18900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15741
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$18902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15741
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15741
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15741
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$19102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15741
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1

    .prologue
    .line 15753
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 15879
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;

    .line 15880
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    .line 15881
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    .locals 1

    .prologue
    .line 15989
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->access$18700()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 15992
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15741
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1

    .prologue
    .line 15757
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object v0
.end method

.method public getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter "index"

    .prologue
    .line 15871
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object v0
.end method

.method public getInterpretationCount()I
    .locals 1

    .prologue
    .line 15868
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSentenceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 15846
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;

    .line 15847
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15848
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15850
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;

    .line 15853
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
    const/4 v4, 0x1

    .line 15914
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedSerializedSize:I

    .line 15915
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 15927
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 15917
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 15918
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 15919
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 15922
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 15923
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 15922
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15926
    :cond_2
    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedSerializedSize:I

    move v2, v1

    .line 15927
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public hasSentence()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 15828
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 15884
    iget-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedIsInitialized:B

    .line 15885
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 15898
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 15885
    goto :goto_0

    .line 15887
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->hasSentence()Z

    move-result v4

    if-nez v4, :cond_2

    .line 15888
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedIsInitialized:B

    move v2, v3

    .line 15889
    goto :goto_0

    .line 15891
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->getInterpretationCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 15892
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 15893
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedIsInitialized:B

    move v2, v3

    .line 15894
    goto :goto_0

    .line 15891
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15897
    :cond_4
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15741
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    .locals 1

    .prologue
    .line 15990
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15741
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    .locals 1

    .prologue
    .line 15994
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

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
    .line 15933
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
    const/4 v2, 0x1

    .line 15903
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->getSerializedSize()I

    .line 15904
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 15905
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15907
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 15908
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15907
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15910
    :cond_1
    return-void
.end method
