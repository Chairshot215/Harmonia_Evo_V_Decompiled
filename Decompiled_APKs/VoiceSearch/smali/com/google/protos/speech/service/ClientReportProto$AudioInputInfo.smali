.class public final Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioInputInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;,
        Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final audioInputInfo:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$ClientReport;",
            "Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;


# instance fields
.field private bitField0_:I

.field private endpointTriggerType_:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 935
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 1223
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    .line 1224
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->initFields()V

    .line 1232
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xa

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->audioInputInfo:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 897
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1017
    iput-byte v6, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->memoizedIsInitialized:B

    .line 1034
    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->memoizedSerializedSize:I

    .line 898
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->initFields()V

    .line 899
    const/4 v2, 0x0

    .line 901
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 902
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 903
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 904
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 909
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 911
    const/4 v0, 0x1

    goto :goto_0

    .line 906
    :sswitch_0
    const/4 v0, 0x1

    .line 907
    goto :goto_0

    .line 916
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 917
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    move-result-object v5

    .line 918
    .local v5, value:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;
    if-eqz v5, :cond_0

    .line 919
    iget v6, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->bitField0_:I

    .line 920
    iput-object v5, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->endpointTriggerType_:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 926
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;
    :catch_0
    move-exception v1

    .line 927
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 932
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->makeExtensionsImmutable()V

    throw v6

    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->makeExtensionsImmutable()V

    .line 934
    return-void

    .line 928
    :catch_1
    move-exception v1

    .line 929
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 904
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 875
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 880
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1017
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->memoizedIsInitialized:B

    .line 1034
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->memoizedSerializedSize:I

    .line 882
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/ClientReportProto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 875
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 883
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1017
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->memoizedIsInitialized:B

    .line 1034
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->memoizedSerializedSize:I

    .line 883
    return-void
.end method

.method static synthetic access$1502(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 875
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->endpointTriggerType_:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 875
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;
    .locals 1

    .prologue
    .line 887
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1015
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->TIMEOUT:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->endpointTriggerType_:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    .line 1016
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;
    .locals 1

    .prologue
    .line 1107
    #calls: Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->access$1300()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1110
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;
    .locals 1

    .prologue
    .line 891
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    return-object v0
.end method

.method public getEndpointTriggerType()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->endpointTriggerType_:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1036
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->memoizedSerializedSize:I

    .line 1037
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1045
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1039
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1040
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1041
    iget-object v2, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->endpointTriggerType_:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    invoke-virtual {v2}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1044
    :cond_1
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 1045
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasEndpointTriggerType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1008
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

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

    .line 1019
    iget-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->memoizedIsInitialized:B

    .line 1020
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 1023
    :goto_0
    return v1

    .line 1020
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1022
    :cond_1
    iput-byte v1, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->newBuilderForType()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;
    .locals 1

    .prologue
    .line 1108
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->toBuilder()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;
    .locals 1

    .prologue
    .line 1112
    invoke-static {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->newBuilder(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

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
    .line 1051
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

    .line 1028
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->getSerializedSize()I

    .line 1029
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->endpointTriggerType_:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1032
    :cond_0
    return-void
.end method
