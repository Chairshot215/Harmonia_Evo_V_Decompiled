.class public final Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatenciesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatenciesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private durationMs_:I

.field private factor_:I

.field private timeout_:Z

.field private type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5084
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5188
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 5085
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->maybeForceBuilderInitialization()V

    .line 5086
    return-void
.end method

.method static synthetic access$4000()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1

    .prologue
    .line 5079
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1

    .prologue
    .line 5091
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 5089
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5079
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 2

    .prologue
    .line 5116
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    .line 5117
    .local v0, result:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5118
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5120
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5079
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 5

    .prologue
    .line 5124
    new-instance v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 5125
    .local v1, result:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5126
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5127
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5128
    or-int/lit8 v2, v2, 0x1

    .line 5130
    :cond_0
    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->access$4202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 5131
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5132
    or-int/lit8 v2, v2, 0x2

    .line 5134
    :cond_1
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->durationMs_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->durationMs_:I
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->access$4302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;I)I

    .line 5135
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5136
    or-int/lit8 v2, v2, 0x4

    .line 5138
    :cond_2
    iget v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->factor_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->factor_:I
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->access$4402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;I)I

    .line 5139
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 5140
    or-int/lit8 v2, v2, 0x8

    .line 5142
    :cond_3
    iget-boolean v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->timeout_:Z

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->timeout_:Z
    invoke-static {v1, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->access$4502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;Z)Z

    .line 5143
    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->access$4602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;I)I

    .line 5144
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5079
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5079
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 2

    .prologue
    .line 5108
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

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
    .line 5079
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 5079
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5079
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .locals 1

    .prologue
    .line 5112
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5165
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
    .line 5079
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5079
    check-cast p1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

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
    .line 5079
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5172
    const/4 v2, 0x0

    .line 5174
    .local v2, parsedMessage:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    :try_start_0
    sget-object v3, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5179
    if-eqz v2, :cond_0

    .line 5180
    invoke-virtual {p0, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    .line 5183
    :cond_0
    return-object p0

    .line 5175
    :catch_0
    move-exception v1

    .line 5176
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-object v2, v0

    .line 5177
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5179
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 5180
    invoke-virtual {p0, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5148
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5161
    :cond_0
    :goto_0
    return-object p0

    .line 5149
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5150
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->setType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    .line 5152
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->hasDurationMs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5153
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getDurationMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->setDurationMs(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    .line 5155
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->hasFactor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5156
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getFactor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->setFactor(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    .line 5158
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->hasTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5159
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getTimeout()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->setTimeout(Z)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    goto :goto_0
.end method

.method public setDurationMs(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5220
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5221
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->durationMs_:I

    .line 5223
    return-object p0
.end method

.method public setFactor(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5241
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5242
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->factor_:I

    .line 5244
    return-object p0
.end method

.method public setTimeout(Z)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5262
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5263
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->timeout_:Z

    .line 5265
    return-object p0
.end method

.method public setType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5196
    if-nez p1, :cond_0

    .line 5197
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5199
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->bitField0_:I

    .line 5200
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 5202
    return-object p0
.end method
