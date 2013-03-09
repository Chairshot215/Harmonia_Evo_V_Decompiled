.class public final Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$SynthesisVoiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;",
        "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$SynthesisVoiceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private engine_:Ljava/lang/Object;

.field private gender_:Ljava/lang/Object;

.field private language_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private sampleRate_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17926
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18051
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->language_:Ljava/lang/Object;

    .line 18104
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->gender_:Ljava/lang/Object;

    .line 18157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->name_:Ljava/lang/Object;

    .line 18231
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->engine_:Ljava/lang/Object;

    .line 17927
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->maybeForceBuilderInitialization()V

    .line 17928
    return-void
.end method

.method static synthetic access$21400()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1

    .prologue
    .line 17921
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1

    .prologue
    .line 17933
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 17931
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 2

    .prologue
    .line 17960
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    .line 17961
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17962
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 17964
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 5

    .prologue
    .line 17968
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 17969
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 17970
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 17971
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 17972
    or-int/lit8 v2, v2, 0x1

    .line 17974
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->language_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$21602(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17975
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 17976
    or-int/lit8 v2, v2, 0x2

    .line 17978
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->gender_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$21702(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17979
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 17980
    or-int/lit8 v2, v2, 0x4

    .line 17982
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$21802(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17983
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 17984
    or-int/lit8 v2, v2, 0x8

    .line 17986
    :cond_3
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->sampleRate_:I

    #setter for: Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->sampleRate_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$21902(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;I)I

    .line 17987
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 17988
    or-int/lit8 v2, v2, 0x10

    .line 17990
    :cond_4
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->engine_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$22002(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17991
    #setter for: Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$22102(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;I)I

    .line 17992
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 2

    .prologue
    .line 17952
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->create()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

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
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17921
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1

    .prologue
    .line 17956
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    return-object v0
.end method

.method public hasLanguage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 18053
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 18024
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->hasLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18026
    const/4 v0, 0x0

    .line 18028
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

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
    .line 17921
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17921
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

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
    .line 17921
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18035
    const/4 v2, 0x0

    .line 18037
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18042
    if-eqz v2, :cond_0

    .line 18043
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    .line 18046
    :cond_0
    return-object p0

    .line 18038
    :catch_0
    move-exception v1

    .line 18039
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-object v2, v0

    .line 18040
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18042
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 18043
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 17996
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 18020
    :cond_0
    :goto_0
    return-object p0

    .line 17997
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17998
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 17999
    #getter for: Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->language_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$21600(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->language_:Ljava/lang/Object;

    .line 18002
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->hasGender()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18003
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18004
    #getter for: Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->gender_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$21700(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->gender_:Ljava/lang/Object;

    .line 18007
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->hasName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18008
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18009
    #getter for: Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$21800(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->name_:Ljava/lang/Object;

    .line 18012
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->hasSampleRate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18013
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->getSampleRate()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->setSampleRate(I)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;

    .line 18015
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->hasEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18016
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18017
    #getter for: Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->engine_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->access$22000(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->engine_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSampleRate(I)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 18218
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->bitField0_:I

    .line 18219
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->sampleRate_:I

    .line 18221
    return-object p0
.end method
