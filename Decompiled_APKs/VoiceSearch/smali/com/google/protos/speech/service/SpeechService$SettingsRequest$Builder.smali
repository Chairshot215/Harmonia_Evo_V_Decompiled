.class public final Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$SettingsRequest;",
        "Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$SettingsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

.field private deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16913
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 17001
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 17054
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;->INQUIRE_PERSONALIZATION:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    .line 16914
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 16915
    return-void
.end method

.method static synthetic access$20200()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1

    .prologue
    .line 16908
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1

    .prologue
    .line 16920
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 16918
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
    .locals 2

    .prologue
    .line 16941
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    .line 16942
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16943
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 16945
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
    .locals 5

    .prologue
    .line 16949
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 16950
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    .line 16951
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 16952
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 16953
    or-int/lit8 v2, v2, 0x1

    .line 16955
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->access$20402(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16956
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 16957
    or-int/lit8 v2, v2, 0x2

    .line 16959
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    #setter for: Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->access$20502(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;)Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    .line 16960
    #setter for: Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->access$20602(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;I)I

    .line 16961
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 2

    .prologue
    .line 16933
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16908
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
    .locals 1

    .prologue
    .line 16937
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 16978
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16908
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16908
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16908
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16985
    const/4 v2, 0x0

    .line 16987
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$SettingsRequest;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16992
    if-eqz v2, :cond_0

    .line 16993
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    .line 16996
    :cond_0
    return-object p0

    .line 16988
    :catch_0
    move-exception v1

    .line 16989
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-object v2, v0

    .line 16990
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16992
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 16993
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 16965
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SettingsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 16974
    :cond_0
    :goto_0
    return-object p0

    .line 16966
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->hasDeprecatedGaiaAuthenticationToken()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16967
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    .line 16968
    #getter for: Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->access$20400(Lcom/google/protos/speech/service/SpeechService$SettingsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedGaiaAuthenticationToken_:Ljava/lang/Object;

    .line 16971
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->hasDeprecatedPersonalizationOptIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16972
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest;->getDeprecatedPersonalizationOptIn()Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->setDeprecatedPersonalizationOptIn(Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;

    goto :goto_0
.end method

.method public setDeprecatedPersonalizationOptIn(Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;)Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 17062
    if-nez p1, :cond_0

    .line 17063
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17065
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->bitField0_:I

    .line 17066
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$SettingsRequest$Builder;->deprecatedPersonalizationOptIn_:Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;

    .line 17068
    return-object p0
.end method
