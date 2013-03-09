.class public final Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SettingsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

.field public static final settingsRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "Lcom/google/protos/speech/service/SpeechService$SettingsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

.field private deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 16741
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 17081
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    .line 17082
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->initFields()V

    .line 17090
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x13

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->settingsRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 16698
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16804
    iput-byte v6, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->memoizedIsInitialized:B

    .line 16824
    iput v6, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->memoizedSerializedSize:I

    .line 16699
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->initFields()V

    .line 16700
    const/4 v2, 0x0

    .line 16702
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 16703
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 16704
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 16705
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 16710
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 16712
    const/4 v0, 0x1

    goto :goto_0

    .line 16707
    :sswitch_0
    const/4 v0, 0x1

    .line 16708
    goto :goto_0

    .line 16717
    :sswitch_1
    iget v6, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->bitField0_:I

    .line 16718
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 16732
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 16733
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16738
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->makeExtensionsImmutable()V

    throw v6

    .line 16722
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 16723
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    move-result-object v5

    .line 16724
    .local v5, value:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;
    if-eqz v5, :cond_0

    .line 16725
    iget v6, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->bitField0_:I

    .line 16726
    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 16734
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;
    :catch_1
    move-exception v1

    .line 16735
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

    .line 16738
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->makeExtensionsImmutable()V

    .line 16740
    return-void

    .line 16705
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
    .line 16676
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 16681
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16804
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->memoizedIsInitialized:B

    .line 16824
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->memoizedSerializedSize:I

    .line 16683
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16676
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 16684
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16804
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->memoizedIsInitialized:B

    .line 16824
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->memoizedSerializedSize:I

    .line 16684
    return-void
.end method

.method static synthetic access$20400(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16676
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$20402(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16676
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20502(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;)Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16676
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    return-object p1
.end method

.method static synthetic access$20602(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16676
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
    .locals 1

    .prologue
    .line 16688
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 16801
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 16802
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->INQUIRE_PERSONALIZATION:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    .line 16803
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1

    .prologue
    .line 16901
    #calls: Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->access$20200()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 16904
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16676
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
    .locals 1

    .prologue
    .line 16692
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    return-object v0
.end method

.method public getDeprecatedGaiaAuthenticationTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 16779
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 16780
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 16781
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16783
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 16786
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

.method public getDeprecatedPersonalizationOptIn()Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;
    .locals 1

    .prologue
    .line 16797
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 16826
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->memoizedSerializedSize:I

    .line 16827
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 16839
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 16829
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 16830
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 16831
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->getDeprecatedGaiaAuthenticationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16834
    :cond_1
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 16835
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 16838
    :cond_2
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 16839
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasDeprecatedGaiaAuthenticationToken()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 16761
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeprecatedPersonalizationOptIn()Z
    .locals 2

    .prologue
    .line 16794
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->bitField0_:I

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

    .line 16806
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->memoizedIsInitialized:B

    .line 16807
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 16810
    :goto_0
    return v1

    .line 16807
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 16809
    :cond_1
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16676
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1

    .prologue
    .line 16902
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16676
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->toBuilder()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1

    .prologue
    .line 16906
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

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
    .line 16845
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

    .line 16815
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->getSerializedSize()I

    .line 16816
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 16817
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->getDeprecatedGaiaAuthenticationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16819
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 16820
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 16822
    :cond_1
    return-void
.end method
