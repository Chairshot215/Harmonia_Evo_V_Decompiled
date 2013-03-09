.class public final Lcom/google/protos/speech/service/SpeechService$ApplicationData;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ApplicationDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApplicationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$ApplicationDataOrBuilder;"
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationData;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1770
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 1962
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 1963
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->initFields()V

    .line 1964
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 1742
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 1787
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->memoizedIsInitialized:B

    .line 1809
    iput v3, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->memoizedSerializedSize:I

    .line 1743
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->initFields()V

    .line 1745
    const/4 v0, 0x0

    .line 1746
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1747
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1748
    .local v2, tag:I
    packed-switch v2, :pswitch_data_0

    .line 1753
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 1755
    const/4 v0, 0x1

    goto :goto_0

    .line 1750
    :pswitch_0
    const/4 v0, 0x1

    .line 1751
    goto :goto_0

    .line 1767
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->makeExtensionsImmutable()V

    .line 1769
    return-void

    .line 1761
    :catch_0
    move-exception v1

    .line 1762
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1767
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->makeExtensionsImmutable()V

    throw v3

    .line 1763
    :catch_1
    move-exception v1

    .line 1764
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1748
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/SpeechService$1;)V
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
    .line 1720
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<Lcom/google/protos/speech/service/SpeechService$ApplicationData;*>;"
    const/4 v0, -0x1

    .line 1725
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 1787
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->memoizedIsInitialized:B

    .line 1809
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->memoizedSerializedSize:I

    .line 1727
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1720
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1728
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 1787
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->memoizedIsInitialized:B

    .line 1809
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->memoizedSerializedSize:I

    .line 1728
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 1732
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1786
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    .locals 1

    .prologue
    .line 1879
    #calls: Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->access$1900()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1882
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1720
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 1736
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1811
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->memoizedSerializedSize:I

    .line 1812
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1817
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1814
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1815
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1816
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->memoizedSerializedSize:I

    move v1, v0

    .line 1817
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1789
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->memoizedIsInitialized:B

    .line 1790
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 1797
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1790
    goto :goto_0

    .line 1792
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->extensionsAreInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1793
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->memoizedIsInitialized:B

    move v1, v2

    .line 1794
    goto :goto_0

    .line 1796
    :cond_2
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1720
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    .locals 1

    .prologue
    .line 1880
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1720
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    .locals 1

    .prologue
    .line 1884
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

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
    .line 1823
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

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
    .line 1802
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getSerializedSize()I

    .line 1804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 1806
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<Lcom/google/protos/speech/service/SpeechService$ApplicationData;>.ExtensionWriter;"
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 1807
    return-void
.end method
