.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KansasGrammar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

.field public static final kansasGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$Grammar;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private kansasId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 2879
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->PARSER:Lcom/google/protobuf/Parser;

    .line 3176
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    .line 3177
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->initFields()V

    .line 3185
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xf

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->kansasGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 2845
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2931
    iput-byte v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->memoizedIsInitialized:B

    .line 2952
    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->memoizedSerializedSize:I

    .line 2846
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->initFields()V

    .line 2847
    const/4 v2, 0x0

    .line 2849
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 2850
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2851
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 2852
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 2857
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2859
    const/4 v0, 0x1

    goto :goto_0

    .line 2854
    :sswitch_0
    const/4 v0, 0x1

    .line 2855
    goto :goto_0

    .line 2864
    :sswitch_1
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->bitField0_:I

    .line 2865
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->kansasId_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2870
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 2871
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2876
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->makeExtensionsImmutable()V

    throw v4

    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->makeExtensionsImmutable()V

    .line 2878
    return-void

    .line 2872
    :catch_1
    move-exception v1

    .line 2873
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2852
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 2823
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2828
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2931
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->memoizedIsInitialized:B

    .line 2952
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->memoizedSerializedSize:I

    .line 2830
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2823
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2831
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2931
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->memoizedIsInitialized:B

    .line 2952
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->memoizedSerializedSize:I

    .line 2831
    return-void
.end method

.method static synthetic access$3400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2823
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->kansasId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2823
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->kansasId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2823
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;
    .locals 1

    .prologue
    .line 2835
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2929
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->kansasId_:Ljava/lang/Object;

    .line 2930
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;
    .locals 1

    .prologue
    .line 3025
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->access$3200()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 3028
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2823
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;
    .locals 1

    .prologue
    .line 2839
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;

    return-object v0
.end method

.method public getKansasIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2917
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->kansasId_:Ljava/lang/Object;

    .line 2918
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2919
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2921
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->kansasId_:Ljava/lang/Object;

    .line 2924
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
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2954
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->memoizedSerializedSize:I

    .line 2955
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2963
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 2957
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 2958
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 2959
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->getKansasIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2962
    :cond_1
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->memoizedSerializedSize:I

    move v1, v0

    .line 2963
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasKansasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2899
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->bitField0_:I

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

    .line 2933
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->memoizedIsInitialized:B

    .line 2934
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 2941
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2934
    goto :goto_0

    .line 2936
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->hasKansasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2937
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->memoizedIsInitialized:B

    move v1, v2

    .line 2938
    goto :goto_0

    .line 2940
    :cond_2
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2823
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;
    .locals 1

    .prologue
    .line 3026
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2823
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;
    .locals 1

    .prologue
    .line 3030
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar$Builder;

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
    .line 2969
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2946
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->getSerializedSize()I

    .line 2947
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2948
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasGrammar;->getKansasIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2950
    :cond_0
    return-void
.end method
