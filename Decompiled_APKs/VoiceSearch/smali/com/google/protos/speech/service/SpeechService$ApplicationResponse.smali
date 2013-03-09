.class public final Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ApplicationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApplicationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final applicationResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;


# instance fields
.field private applicationErrorCode_:I

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 21037
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 21351
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    .line 21352
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->initFields()V

    .line 21360
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xf

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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
    const/4 v5, -0x1

    .line 20990
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21077
    iput-byte v5, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedIsInitialized:B

    .line 21103
    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedSerializedSize:I

    .line 20991
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->initFields()V

    .line 20992
    const/4 v2, 0x0

    .line 20994
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 20995
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 20996
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 20997
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 21002
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 21004
    const/4 v0, 0x1

    goto :goto_0

    .line 20999
    :sswitch_0
    const/4 v0, 0x1

    .line 21000
    goto :goto_0

    .line 21009
    :sswitch_1
    const/4 v3, 0x0

    .line 21010
    .local v3, subBuilder:Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 21011
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {v5}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v3

    .line 21013
    :cond_1
    sget-object v5, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 21014
    if-eqz v3, :cond_2

    .line 21015
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {v3, v5}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    .line 21016
    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 21018
    :cond_2
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 21028
    .end local v3           #subBuilder:Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 21029
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21034
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->makeExtensionsImmutable()V

    throw v5

    .line 21022
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    .line 21023
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationErrorCode_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 21030
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 21031
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21034
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->makeExtensionsImmutable()V

    .line 21036
    return-void

    .line 20997
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
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
    .line 20968
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 20973
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21077
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedIsInitialized:B

    .line 21103
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedSerializedSize:I

    .line 20975
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20968
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 20976
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21077
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedIsInitialized:B

    .line 21103
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedSerializedSize:I

    .line 20976
    return-void
.end method

.method static synthetic access$26202(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20968
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object p1
.end method

.method static synthetic access$26302(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20968
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationErrorCode_:I

    return p1
.end method

.method static synthetic access$26402(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20968
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1

    .prologue
    .line 20980
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 21074
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 21075
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationErrorCode_:I

    .line 21076
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 1

    .prologue
    .line 21180
    #calls: Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->access$26000()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 21183
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationErrorCode()I
    .locals 1

    .prologue
    .line 21070
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationErrorCode_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20968
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1

    .prologue
    .line 20984
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    return-object v0
.end method

.method public getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 21060
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 21105
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedSerializedSize:I

    .line 21106
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 21118
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 21108
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 21109
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 21110
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21113
    :cond_1
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 21114
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationErrorCode_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 21117
    :cond_2
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 21118
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasApplicationErrorCode()Z
    .locals 2

    .prologue
    .line 21067
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

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

.method public hasResponse()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 21057
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

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

    .line 21079
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedIsInitialized:B

    .line 21080
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 21089
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 21080
    goto :goto_0

    .line 21082
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->hasResponse()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 21083
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 21084
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 21085
    goto :goto_0

    .line 21088
    :cond_2
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20968
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 1

    .prologue
    .line 21181
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20968
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 1

    .prologue
    .line 21185
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

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
    .line 21124
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

    .line 21094
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->getSerializedSize()I

    .line 21095
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 21096
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 21098
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 21099
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationErrorCode_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 21101
    :cond_1
    return-void
.end method
