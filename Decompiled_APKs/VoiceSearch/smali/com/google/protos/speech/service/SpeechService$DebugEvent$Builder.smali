.class public final Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$DebugEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$DebugEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$DebugEvent;",
        "Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$DebugEventOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private durationMs_:J

.field private startTimeMs_:J

.field private subevent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DebugEvent;",
            ">;"
        }
    .end annotation
.end field

.field private text_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6899
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7055
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->text_:Ljava/lang/Object;

    .line 7108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    .line 6900
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->maybeForceBuilderInitialization()V

    .line 6901
    return-void
.end method

.method static synthetic access$7600()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1

    .prologue
    .line 6894
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->create()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1

    .prologue
    .line 6906
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSubeventIsMutable()V
    .locals 2

    .prologue
    .line 7111
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 7112
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    .line 7113
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 7115
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 6904
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->build()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 2

    .prologue
    .line 6931
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    .line 6932
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6933
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6935
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 5

    .prologue
    .line 6939
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 6940
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 6941
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6942
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6943
    or-int/lit8 v2, v2, 0x1

    .line 6945
    :cond_0
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->startTimeMs_:J

    #setter for: Lcom/google/protos/speech/service/SpeechService$DebugEvent;->startTimeMs_:J
    invoke-static {v1, v3, v4}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$7802(Lcom/google/protos/speech/service/SpeechService$DebugEvent;J)J

    .line 6946
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6947
    or-int/lit8 v2, v2, 0x2

    .line 6949
    :cond_1
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->durationMs_:J

    #setter for: Lcom/google/protos/speech/service/SpeechService$DebugEvent;->durationMs_:J
    invoke-static {v1, v3, v4}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$7902(Lcom/google/protos/speech/service/SpeechService$DebugEvent;J)J

    .line 6950
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 6951
    or-int/lit8 v2, v2, 0x4

    .line 6953
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$8002(Lcom/google/protos/speech/service/SpeechService$DebugEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6954
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 6955
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    .line 6956
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 6958
    :cond_3
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    #setter for: Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$8102(Lcom/google/protos/speech/service/SpeechService$DebugEvent;Ljava/util/List;)Ljava/util/List;

    .line 6959
    #setter for: Lcom/google/protos/speech/service/SpeechService$DebugEvent;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$8202(Lcom/google/protos/speech/service/SpeechService$DebugEvent;I)I

    .line 6960
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 2

    .prologue
    .line 6923
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->create()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

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
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    .locals 1

    .prologue
    .line 6927
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6990
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
    .line 6894
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6894
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

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
    .line 6894
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6997
    const/4 v2, 0x0

    .line 6999
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$DebugEvent;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7004
    if-eqz v2, :cond_0

    .line 7005
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    .line 7008
    :cond_0
    return-object p0

    .line 7000
    :catch_0
    move-exception v1

    .line 7001
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-object v2, v0

    .line 7002
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7004
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 7005
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 6964
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DebugEvent;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 6986
    :cond_0
    :goto_0
    return-object p0

    .line 6965
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->hasStartTimeMs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6966
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getStartTimeMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->setStartTimeMs(J)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    .line 6968
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->hasDurationMs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6969
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->getDurationMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->setDurationMs(J)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;

    .line 6971
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->hasText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6972
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 6973
    #getter for: Lcom/google/protos/speech/service/SpeechService$DebugEvent;->text_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$8000(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->text_:Ljava/lang/Object;

    .line 6976
    :cond_4
    #getter for: Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$8100(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6977
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6978
    #getter for: Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$8100(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    .line 6979
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    goto :goto_0

    .line 6981
    :cond_5
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->ensureSubeventIsMutable()V

    .line 6982
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->subevent_:Ljava/util/List;

    #getter for: Lcom/google/protos/speech/service/SpeechService$DebugEvent;->subevent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$DebugEvent;->access$8100(Lcom/google/protos/speech/service/SpeechService$DebugEvent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setDurationMs(J)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7042
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 7043
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->durationMs_:J

    .line 7045
    return-object p0
.end method

.method public setStartTimeMs(J)Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7021
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->bitField0_:I

    .line 7022
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$DebugEvent$Builder;->startTimeMs_:J

    .line 7024
    return-object p0
.end method
