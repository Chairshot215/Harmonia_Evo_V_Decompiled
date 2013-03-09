.class public final Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;",
        "Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private endpointTriggerType_:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1196
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->TIMEOUT:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->endpointTriggerType_:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    .line 1120
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->maybeForceBuilderInitialization()V

    .line 1121
    return-void
.end method

.method static synthetic access$1300()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;
    .locals 1

    .prologue
    .line 1114
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;
    .locals 1

    .prologue
    .line 1126
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1124
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;
    .locals 2

    .prologue
    .line 1145
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-result-object v0

    .line 1146
    .local v0, result:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1147
    invoke-static {v0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1149
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;
    .locals 5

    .prologue
    .line 1153
    new-instance v1, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/ClientReportProto$1;)V

    .line 1154
    .local v1, result:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->bitField0_:I

    .line 1155
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1156
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1157
    or-int/lit8 v2, v2, 0x1

    .line 1159
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->endpointTriggerType_:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->endpointTriggerType_:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->access$1502(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    .line 1160
    #setter for: Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->access$1602(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;I)I

    .line 1161
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;
    .locals 2

    .prologue
    .line 1137
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

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
    .line 1114
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;
    .locals 1

    .prologue
    .line 1141
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1173
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
    .line 1114
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1114
    check-cast p1, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

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
    .line 1114
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1180
    const/4 v2, 0x0

    .line 1182
    .local v2, parsedMessage:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    if-eqz v2, :cond_0

    .line 1188
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    .line 1191
    :cond_0
    return-object p0

    .line 1183
    :catch_0
    move-exception v1

    .line 1184
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-object v2, v0

    .line 1185
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1187
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1188
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1165
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return-object p0

    .line 1166
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->hasEndpointTriggerType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->getEndpointTriggerType()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->setEndpointTriggerType(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    goto :goto_0
.end method

.method public setEndpointTriggerType(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1204
    if-nez p1, :cond_0

    .line 1205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1207
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->bitField0_:I

    .line 1208
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->endpointTriggerType_:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    .line 1210
    return-object p0
.end method
