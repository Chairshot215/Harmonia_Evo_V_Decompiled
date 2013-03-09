.class public final Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;",
        "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpanOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private length_:I

.field private recognizedText_:Ljava/lang/Object;

.field private segmentUtteranceId_:Ljava/lang/Object;

.field private selectedText_:Ljava/lang/Object;

.field private start_:I

.field private unit_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2977
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3168
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->recognizedText_:Ljava/lang/Object;

    .line 3221
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    .line 3274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->segmentUtteranceId_:Ljava/lang/Object;

    .line 2978
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->maybeForceBuilderInitialization()V

    .line 2979
    return-void
.end method

.method static synthetic access$3500()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1

    .prologue
    .line 2972
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1

    .prologue
    .line 2984
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2982
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2972
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 2

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    .line 3014
    .local v0, result:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3015
    invoke-static {v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3017
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2972
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 5

    .prologue
    .line 3021
    new-instance v1, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/ClientReportProto$1;)V

    .line 3022
    .local v1, result:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3023
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3024
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3025
    or-int/lit8 v2, v2, 0x1

    .line 3027
    :cond_0
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->unit_:I

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->unit_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$3702(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I

    .line 3028
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3029
    or-int/lit8 v2, v2, 0x2

    .line 3031
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->start_:I

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->start_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$3802(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I

    .line 3032
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3033
    or-int/lit8 v2, v2, 0x4

    .line 3035
    :cond_2
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->length_:I

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->length_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$3902(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I

    .line 3036
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 3037
    or-int/lit8 v2, v2, 0x8

    .line 3039
    :cond_3
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->recognizedText_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$4002(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3040
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 3041
    or-int/lit8 v2, v2, 0x10

    .line 3043
    :cond_4
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$4102(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3044
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 3045
    or-int/lit8 v2, v2, 0x20

    .line 3047
    :cond_5
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->segmentUtteranceId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->segmentUtteranceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$4202(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3048
    #setter for: Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$4302(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;I)I

    .line 3049
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2972
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2972
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 2

    .prologue
    .line 3005
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

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
    .line 2972
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2972
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2972
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1

    .prologue
    .line 3009
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3082
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
    .line 2972
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2972
    check-cast p1, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

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
    .line 2972
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3089
    const/4 v2, 0x0

    .line 3091
    .local v2, parsedMessage:Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3096
    if-eqz v2, :cond_0

    .line 3097
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    .line 3100
    :cond_0
    return-object p0

    .line 3092
    :catch_0
    move-exception v1

    .line 3093
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-object v2, v0

    .line 3094
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3096
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3097
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3053
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3078
    :cond_0
    :goto_0
    return-object p0

    .line 3054
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->hasUnit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3055
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getUnit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->setUnit(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    .line 3057
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3058
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->setStart(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    .line 3060
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->hasLength()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3061
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->setLength(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;

    .line 3063
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->hasRecognizedText()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3064
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3065
    #getter for: Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->recognizedText_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$4000(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->recognizedText_:Ljava/lang/Object;

    .line 3068
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->hasSelectedText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3069
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3070
    #getter for: Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->selectedText_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$4100(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    .line 3073
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->hasSegmentUtteranceId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3074
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3075
    #getter for: Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->segmentUtteranceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;->access$4200(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->segmentUtteranceId_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setLength(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3155
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3156
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->length_:I

    .line 3158
    return-object p0
.end method

.method public setSegmentUtteranceId(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3301
    if-nez p1, :cond_0

    .line 3302
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3304
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3305
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->segmentUtteranceId_:Ljava/lang/Object;

    .line 3307
    return-object p0
.end method

.method public setSelectedText(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3248
    if-nez p1, :cond_0

    .line 3249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3251
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3252
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->selectedText_:Ljava/lang/Object;

    .line 3254
    return-object p0
.end method

.method public setStart(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3134
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3135
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->start_:I

    .line 3137
    return-object p0
.end method

.method public setUnit(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3113
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->bitField0_:I

    .line 3114
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->unit_:I

    .line 3116
    return-object p0
.end method
