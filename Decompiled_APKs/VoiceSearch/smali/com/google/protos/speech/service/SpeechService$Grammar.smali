.class public final Lcom/google/protos/speech/service/SpeechService$Grammar;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$GrammarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Grammar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$Grammar;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$GrammarOrBuilder;"
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$Grammar;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$Grammar;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2023
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Grammar$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$Grammar$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Grammar;->PARSER:Lcom/google/protobuf/Parser;

    .line 2215
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$Grammar;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$Grammar;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$Grammar;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$Grammar;

    .line 2216
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Grammar;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$Grammar;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->initFields()V

    .line 2217
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

    .line 1995
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 2040
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$Grammar;->memoizedIsInitialized:B

    .line 2062
    iput v3, p0, Lcom/google/protos/speech/service/SpeechService$Grammar;->memoizedSerializedSize:I

    .line 1996
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->initFields()V

    .line 1998
    const/4 v0, 0x0

    .line 1999
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2000
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 2001
    .local v2, tag:I
    packed-switch v2, :pswitch_data_0

    .line 2006
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/service/SpeechService$Grammar;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 2008
    const/4 v0, 0x1

    goto :goto_0

    .line 2003
    :pswitch_0
    const/4 v0, 0x1

    .line 2004
    goto :goto_0

    .line 2020
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->makeExtensionsImmutable()V

    .line 2022
    return-void

    .line 2014
    :catch_0
    move-exception v1

    .line 2015
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2020
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->makeExtensionsImmutable()V

    throw v3

    .line 2016
    :catch_1
    move-exception v1

    .line 2017
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

    .line 2001
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
    .line 1973
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$Grammar;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
            "Lcom/google/protos/speech/service/SpeechService$Grammar;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<Lcom/google/protos/speech/service/SpeechService$Grammar;*>;"
    const/4 v0, -0x1

    .line 1978
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 2040
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$Grammar;->memoizedIsInitialized:B

    .line 2062
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Grammar;->memoizedSerializedSize:I

    .line 1980
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1973
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$Grammar;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1981
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 2040
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$Grammar;->memoizedIsInitialized:B

    .line 2062
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Grammar;->memoizedSerializedSize:I

    .line 1981
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Grammar;
    .locals 1

    .prologue
    .line 1985
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Grammar;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$Grammar;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2039
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;
    .locals 1

    .prologue
    .line 2132
    #calls: Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->create()Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->access$2200()Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2135
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->newBuilder()Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1973
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$Grammar;
    .locals 1

    .prologue
    .line 1989
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Grammar;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$Grammar;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2064
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$Grammar;->memoizedSerializedSize:I

    .line 2065
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2070
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 2067
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 2068
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 2069
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$Grammar;->memoizedSerializedSize:I

    move v1, v0

    .line 2070
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2042
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$Grammar;->memoizedIsInitialized:B

    .line 2043
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 2050
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2043
    goto :goto_0

    .line 2045
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->extensionsAreInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2046
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$Grammar;->memoizedIsInitialized:B

    move v1, v2

    .line 2047
    goto :goto_0

    .line 2049
    :cond_2
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$Grammar;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1973
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;
    .locals 1

    .prologue
    .line 2133
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->newBuilder()Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1973
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->toBuilder()Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;
    .locals 1

    .prologue
    .line 2137
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->newBuilder(Lcom/google/protos/speech/service/SpeechService$Grammar;)Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

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
    .line 2076
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
    .line 2055
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->getSerializedSize()I

    .line 2057
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$Grammar;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 2059
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<Lcom/google/protos/speech/service/SpeechService$Grammar;>.ExtensionWriter;"
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 2060
    return-void
.end method
