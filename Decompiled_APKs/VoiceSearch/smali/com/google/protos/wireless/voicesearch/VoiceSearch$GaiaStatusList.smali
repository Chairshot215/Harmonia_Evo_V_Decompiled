.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GaiaStatusList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

.field public static final gaiaStatusList:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private gaiaStatus_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 7697
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->PARSER:Lcom/google/protobuf/Parser;

    .line 8013
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    .line 8014
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->initFields()V

    .line 8022
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x1a

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatusList:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 7657
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7736
    iput-byte v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->memoizedIsInitialized:B

    .line 7753
    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->memoizedSerializedSize:I

    .line 7658
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->initFields()V

    .line 7659
    const/4 v2, 0x0

    .line 7661
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 7662
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 7663
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 7664
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 7669
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7671
    const/4 v0, 0x1

    goto :goto_0

    .line 7666
    :sswitch_0
    const/4 v0, 0x1

    .line 7667
    goto :goto_0

    .line 7676
    :sswitch_1
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v6, :cond_1

    .line 7677
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    .line 7678
    or-int/lit8 v2, v2, 0x1

    .line 7680
    :cond_1
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 7685
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 7686
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7691
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v6, :cond_2

    .line 7692
    iget-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    .line 7694
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->makeExtensionsImmutable()V

    throw v4

    .line 7691
    :cond_3
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v6, :cond_4

    .line 7692
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    .line 7694
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->makeExtensionsImmutable()V

    .line 7696
    return-void

    .line 7687
    :catch_1
    move-exception v1

    .line 7688
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

    .line 7664
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
    .line 7635
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7640
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7736
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->memoizedIsInitialized:B

    .line 7753
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->memoizedSerializedSize:I

    .line 7642
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7635
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7643
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7736
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->memoizedIsInitialized:B

    .line 7753
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->memoizedSerializedSize:I

    .line 7643
    return-void
.end method

.method static synthetic access$9300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7635
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7635
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    .locals 1

    .prologue
    .line 7647
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 7734
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    .line 7735
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1

    .prologue
    .line 7826
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->access$9100()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 7829
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7635
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    .locals 1

    .prologue
    .line 7651
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    return-object v0
.end method

.method public getGaiaStatus(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    .locals 1
    .parameter "index"

    .prologue
    .line 7726
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    return-object v0
.end method

.method public getGaiaStatusCount()I
    .locals 1

    .prologue
    .line 7723
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGaiaStatusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7716
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 7755
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->memoizedSerializedSize:I

    .line 7756
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 7764
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 7758
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 7759
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 7760
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7759
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7763
    :cond_1
    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->memoizedSerializedSize:I

    move v2, v1

    .line 7764
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 7738
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->memoizedIsInitialized:B

    .line 7739
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 7742
    :goto_0
    return v1

    .line 7739
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 7741
    :cond_1
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7635
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1

    .prologue
    .line 7827
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7635
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1

    .prologue
    .line 7831
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

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
    .line 7770
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
    .line 7747
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->getSerializedSize()I

    .line 7748
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 7749
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7748
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7751
    :cond_0
    return-void
.end method
