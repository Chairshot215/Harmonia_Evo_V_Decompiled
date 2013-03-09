.class public final Lcom/google/protos/speech/service/SpeechService$SettingsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SettingsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

.field public static final settingsResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$SettingsResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

.field private deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 17184
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 17501
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    .line 17502
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->initFields()V

    .line 17510
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x16

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->settingsResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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
    const/4 v7, -0x1

    .line 17133
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17224
    iput-byte v7, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->memoizedIsInitialized:B

    .line 17250
    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->memoizedSerializedSize:I

    .line 17134
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->initFields()V

    .line 17135
    const/4 v2, 0x0

    .line 17137
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 17138
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 17139
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 17140
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 17145
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 17147
    const/4 v0, 0x1

    goto :goto_0

    .line 17142
    :sswitch_0
    const/4 v0, 0x1

    .line 17143
    goto :goto_0

    .line 17152
    :sswitch_1
    const/4 v4, 0x0

    .line 17153
    .local v4, subBuilder:Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->bitField0_:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 17154
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->toBuilder()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v4

    .line 17156
    :cond_1
    sget-object v7, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 17157
    if-eqz v4, :cond_2

    .line 17158
    iget-object v7, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    .line 17159
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 17161
    :cond_2
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 17175
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .end local v5           #tag:I
    :catch_0
    move-exception v1

    .line 17176
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17181
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->makeExtensionsImmutable()V

    throw v7

    .line 17165
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 17166
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    move-result-object v6

    .line 17167
    .local v6, value:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;
    if-eqz v6, :cond_0

    .line 17168
    iget v7, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->bitField0_:I

    .line 17169
    iput-object v6, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 17177
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v6           #value:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;
    :catch_1
    move-exception v1

    .line 17178
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17181
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->makeExtensionsImmutable()V

    .line 17183
    return-void

    .line 17140
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x30 -> :sswitch_2
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
    .line 17111
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 17116
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 17224
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->memoizedIsInitialized:B

    .line 17250
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->memoizedSerializedSize:I

    .line 17118
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17111
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 17119
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17224
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->memoizedIsInitialized:B

    .line 17250
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->memoizedSerializedSize:I

    .line 17119
    return-void
.end method

.method static synthetic access$21002(Lcom/google/protos/speech/service/SpeechService$SettingsResponse;Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17111
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    return-object p1
.end method

.method static synthetic access$21102(Lcom/google/protos/speech/service/SpeechService$SettingsResponse;Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;)Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17111
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    return-object p1
.end method

.method static synthetic access$21202(Lcom/google/protos/speech/service/SpeechService$SettingsResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17111
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;
    .locals 1

    .prologue
    .line 17123
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 17221
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    .line 17222
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;->PERSONALIZATION_NOT_YET_SPECIFIED:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    .line 17223
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;
    .locals 1

    .prologue
    .line 17327
    #calls: Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->access$20800()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$SettingsResponse;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 17330
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsResponse;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17111
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SettingsResponse;
    .locals 1

    .prologue
    .line 17127
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SettingsResponse;

    return-object v0
.end method

.method public getDeprecatedGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    .locals 1

    .prologue
    .line 17207
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    return-object v0
.end method

.method public getDeprecatedPersonalizationEnabled()Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;
    .locals 1

    .prologue
    .line 17217
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 17252
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->memoizedSerializedSize:I

    .line 17253
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 17265
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 17255
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 17256
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 17257
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17260
    :cond_1
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 17261
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 17264
    :cond_2
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 17265
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasDeprecatedGaiaResult()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 17204
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeprecatedPersonalizationEnabled()Z
    .locals 2

    .prologue
    .line 17214
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 17226
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->memoizedIsInitialized:B

    .line 17227
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 17236
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 17227
    goto :goto_0

    .line 17229
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->hasDeprecatedGaiaResult()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17230
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->getDeprecatedGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 17231
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 17232
    goto :goto_0

    .line 17235
    :cond_2
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17111
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;
    .locals 1

    .prologue
    .line 17328
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17111
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;
    .locals 1

    .prologue
    .line 17332
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SettingsResponse;)Lcom/google/protos/speech/service/SpeechService$SettingsResponse$Builder;

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
    .line 17271
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

    .line 17241
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->getSerializedSize()I

    .line 17242
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 17243
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedGaiaResult_:Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17245
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 17246
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsResponse;->deprecatedPersonalizationEnabled_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationEnabledCode;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 17248
    :cond_1
    return-void
.end method
