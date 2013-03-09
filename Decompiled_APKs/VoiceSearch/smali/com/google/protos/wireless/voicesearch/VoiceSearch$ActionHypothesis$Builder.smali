.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesisOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesisOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private interpretation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            ">;"
        }
    .end annotation
.end field

.field private sentence_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16001
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16107
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    .line 16160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->interpretation_:Ljava/util/List;

    .line 16002
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->maybeForceBuilderInitialization()V

    .line 16003
    return-void
.end method

.method static synthetic access$18700()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    .locals 1

    .prologue
    .line 15996
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    .locals 1

    .prologue
    .line 16008
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;-><init>()V

    return-object v0
.end method

.method private ensureInterpretationIsMutable()V
    .locals 2

    .prologue
    .line 16163
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 16164
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->interpretation_:Ljava/util/List;

    .line 16165
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->bitField0_:I

    .line 16167
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 16006
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15996
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 2

    .prologue
    .line 16029
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v0

    .line 16030
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16031
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 16033
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15996
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 5

    .prologue
    .line 16037
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 16038
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->bitField0_:I

    .line 16039
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 16040
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 16041
    or-int/lit8 v2, v2, 0x1

    .line 16043
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->access$18902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16044
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 16045
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->interpretation_:Ljava/util/List;

    .line 16046
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->bitField0_:I

    .line 16048
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->interpretation_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->access$19002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;Ljava/util/List;)Ljava/util/List;

    .line 16049
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->access$19102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;I)I

    .line 16050
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 15996
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 15996
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    .locals 2

    .prologue
    .line 16021
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

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
    .line 15996
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 15996
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15996
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1

    .prologue
    .line 16025
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter "index"

    .prologue
    .line 16176
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object v0
.end method

.method public getInterpretationCount()I
    .locals 1

    .prologue
    .line 16173
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasSentence()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 16109
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->bitField0_:I

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
    const/4 v1, 0x0

    .line 16074
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->hasSentence()Z

    move-result v2

    if-nez v2, :cond_1

    .line 16084
    :cond_0
    :goto_0
    return v1

    .line 16078
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->getInterpretationCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 16079
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16078
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16084
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
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
    .line 15996
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15996
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

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
    .line 15996
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16091
    const/4 v2, 0x0

    .line 16093
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16098
    if-eqz v2, :cond_0

    .line 16099
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    .line 16102
    :cond_0
    return-object p0

    .line 16094
    :catch_0
    move-exception v1

    .line 16095
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-object v2, v0

    .line 16096
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16098
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 16099
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 16054
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 16070
    :cond_0
    :goto_0
    return-object p0

    .line 16055
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->hasSentence()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16056
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->bitField0_:I

    .line 16057
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->sentence_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->access$18900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    .line 16060
    :cond_2
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->access$19000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16061
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16062
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->access$19000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->interpretation_:Ljava/util/List;

    .line 16063
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->bitField0_:I

    goto :goto_0

    .line 16065
    :cond_3
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->ensureInterpretationIsMutable()V

    .line 16066
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->interpretation_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->interpretation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->access$19000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
