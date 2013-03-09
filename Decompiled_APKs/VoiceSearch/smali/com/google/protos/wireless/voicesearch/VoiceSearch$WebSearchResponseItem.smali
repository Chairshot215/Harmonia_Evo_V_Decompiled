.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebSearchResponseItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;


# instance fields
.field private bitField0_:I

.field private httpHeader_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pageHtmlEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field private pageHtml_:Ljava/lang/Object;

.field private query_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15014
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 15719
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    .line 15720
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->initFields()V

    .line 15721
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

    .line 14950
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15167
    iput-byte v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->memoizedIsInitialized:B

    .line 15206
    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->memoizedSerializedSize:I

    .line 14951
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->initFields()V

    .line 14952
    const/4 v2, 0x0

    .line 14954
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 14955
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 14956
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 14957
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 14962
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 14964
    const/4 v0, 0x1

    goto :goto_0

    .line 14959
    :sswitch_0
    const/4 v0, 0x1

    .line 14960
    goto :goto_0

    .line 14969
    :sswitch_1
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    .line 14970
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->query_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 15002
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 15003
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15008
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    and-int/lit8 v7, v2, 0x10

    if-ne v7, v8, :cond_1

    .line 15009
    iget-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    .line 15011
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->makeExtensionsImmutable()V

    throw v6

    .line 14974
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    .line 14975
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->url_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 15004
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 15005
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

    .line 14979
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_4
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    .line 14980
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtml_:Ljava/lang/Object;

    goto :goto_0

    .line 14984
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 14985
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    move-result-object v5

    .line 14986
    .local v5, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    if-eqz v5, :cond_0

    .line 14987
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    .line 14988
    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtmlEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    goto :goto_0

    .line 14993
    .end local v3           #rawValue:I
    .end local v5           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    :sswitch_5
    and-int/lit8 v6, v2, 0x10

    if-eq v6, v8, :cond_2

    .line 14994
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    .line 14995
    or-int/lit8 v2, v2, 0x10

    .line 14997
    :cond_2
    iget-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    sget-object v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 15008
    .end local v4           #tag:I
    :cond_3
    and-int/lit8 v6, v2, 0x10

    if-ne v6, v8, :cond_4

    .line 15009
    iget-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    .line 15011
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->makeExtensionsImmutable()V

    .line 15013
    return-void

    .line 14957
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 14928
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 14933
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15167
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->memoizedIsInitialized:B

    .line 15206
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->memoizedSerializedSize:I

    .line 14935
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14928
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14936
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15167
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->memoizedIsInitialized:B

    .line 15206
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->memoizedSerializedSize:I

    .line 14936
    return-void
.end method

.method static synthetic access$18000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14928
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->query_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$18002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14928
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->query_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18100(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14928
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->url_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$18102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14928
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18200(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14928
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtml_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$18202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14928
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14928
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtmlEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object p1
.end method

.method static synthetic access$18400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14928
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$18402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14928
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14928
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    .locals 1

    .prologue
    .line 14940
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 15161
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->query_:Ljava/lang/Object;

    .line 15162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->url_:Ljava/lang/Object;

    .line 15163
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtml_:Ljava/lang/Object;

    .line 15164
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtmlEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 15165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    .line 15166
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
    .locals 1

    .prologue
    .line 15295
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->access$17800()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 15298
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14928
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    .locals 1

    .prologue
    .line 14944
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    return-object v0
.end method

.method public getHttpHeader(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;
    .locals 1
    .parameter "index"

    .prologue
    .line 15153
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    return-object v0
.end method

.method public getHttpHeaderCount()I
    .locals 1

    .prologue
    .line 15150
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageHtml()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15103
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtml_:Ljava/lang/Object;

    .line 15104
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 15105
    check-cast v1, Ljava/lang/String;

    .line 15113
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 15107
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15109
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15110
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15111
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtml_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15113
    goto :goto_0
.end method

.method public getPageHtmlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 15118
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtml_:Ljava/lang/Object;

    .line 15119
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15120
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15122
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtml_:Ljava/lang/Object;

    .line 15125
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

.method public getPageHtmlEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .locals 1

    .prologue
    .line 15136
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtmlEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15037
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->query_:Ljava/lang/Object;

    .line 15038
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 15039
    check-cast v1, Ljava/lang/String;

    .line 15047
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 15041
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15043
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15044
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15045
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->query_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15047
    goto :goto_0
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 15052
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->query_:Ljava/lang/Object;

    .line 15053
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15054
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15056
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->query_:Ljava/lang/Object;

    .line 15059
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
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 15208
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->memoizedSerializedSize:I

    .line 15209
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 15233
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 15211
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 15212
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 15213
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 15216
    :cond_1
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 15217
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 15220
    :cond_2
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 15221
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getPageHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 15224
    :cond_3
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 15225
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtmlEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 15228
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 15229
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 15228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15232
    :cond_5
    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->memoizedSerializedSize:I

    move v2, v1

    .line 15233
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15070
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->url_:Ljava/lang/Object;

    .line 15071
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 15072
    check-cast v1, Ljava/lang/String;

    .line 15080
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 15074
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15076
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15077
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15078
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15080
    goto :goto_0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 15085
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->url_:Ljava/lang/Object;

    .line 15086
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15087
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15089
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->url_:Ljava/lang/Object;

    .line 15092
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

.method public hasPageHtml()Z
    .locals 2

    .prologue
    .line 15100
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

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

.method public hasPageHtmlEncoding()Z
    .locals 2

    .prologue
    .line 15133
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

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

.method public hasQuery()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 15034
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 2

    .prologue
    .line 15067
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 15169
    iget-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->memoizedIsInitialized:B

    .line 15170
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 15183
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 15170
    goto :goto_0

    .line 15172
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->hasQuery()Z

    move-result v4

    if-nez v4, :cond_2

    .line 15173
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->memoizedIsInitialized:B

    move v2, v3

    .line 15174
    goto :goto_0

    .line 15176
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getHttpHeaderCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 15177
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getHttpHeader(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 15178
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->memoizedIsInitialized:B

    move v2, v3

    .line 15179
    goto :goto_0

    .line 15176
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15182
    :cond_4
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14928
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
    .locals 1

    .prologue
    .line 15296
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14928
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
    .locals 1

    .prologue
    .line 15300
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

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
    .line 15239
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

    .line 15188
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getSerializedSize()I

    .line 15189
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 15190
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15192
    :cond_0
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 15193
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15195
    :cond_1
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 15196
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getPageHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15198
    :cond_2
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 15199
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtmlEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 15201
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 15202
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15204
    :cond_4
    return-void
.end method
