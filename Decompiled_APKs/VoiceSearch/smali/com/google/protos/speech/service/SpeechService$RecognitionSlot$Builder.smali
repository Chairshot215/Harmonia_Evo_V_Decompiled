.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionSlotOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionSlotOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private literal_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private subslot_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2641
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 2787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->name_:Ljava/lang/Object;

    .line 2840
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->value_:Ljava/lang/Object;

    .line 2914
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->literal_:Ljava/lang/Object;

    .line 2967
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    .line 2642
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->maybeForceBuilderInitialization()V

    .line 2643
    return-void
.end method

.method static synthetic access$2500()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2637
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2648
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSubslotIsMutable()V
    .locals 2

    .prologue
    .line 2970
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 2971
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    .line 2972
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2974
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2646
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 2

    .prologue
    .line 2675
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    .line 2676
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2677
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2679
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 5

    .prologue
    .line 2683
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 2684
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2685
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2686
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2687
    or-int/lit8 v2, v2, 0x1

    .line 2689
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$2702(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2690
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2691
    or-int/lit8 v2, v2, 0x2

    .line 2693
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$2802(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2694
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2695
    or-int/lit8 v2, v2, 0x4

    .line 2697
    :cond_2
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->confidence_:F

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->confidence_:F
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$2902(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;F)F

    .line 2698
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2699
    or-int/lit8 v2, v2, 0x8

    .line 2701
    :cond_3
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->literal_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$3002(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2702
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2703
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    .line 2704
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2706
    :cond_4
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$3102(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/util/List;)Ljava/util/List;

    .line 2707
    #setter for: Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$3202(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;I)I

    .line 2708
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 2

    .prologue
    .line 2667
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

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
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1

    .prologue
    .line 2671
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    return-object v0
.end method

.method public getSubslot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter "index"

    .prologue
    .line 2983
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object v0
.end method

.method public getSubslotCount()I
    .locals 1

    .prologue
    .line 2980
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2789
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 2842
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

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
    const/4 v1, 0x0

    .line 2746
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->hasName()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2764
    :cond_0
    :goto_0
    return v1

    .line 2750
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2754
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->getSubslotCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2755
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->getSubslot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2754
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2760
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->extensionsAreInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2764
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
    .line 2637
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2637
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

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
    .line 2637
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2771
    const/4 v2, 0x0

    .line 2773
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2778
    if-eqz v2, :cond_0

    .line 2779
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    .line 2782
    :cond_0
    return-object p0

    .line 2774
    :catch_0
    move-exception v1

    .line 2775
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-object v2, v0

    .line 2776
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2778
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2779
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 2712
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2742
    :goto_0
    return-object p0

    .line 2713
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2714
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2715
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$2700(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->name_:Ljava/lang/Object;

    .line 2718
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2719
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2720
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->value_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$2800(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->value_:Ljava/lang/Object;

    .line 2723
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2724
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getConfidence()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->setConfidence(F)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    .line 2726
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->hasLiteral()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2727
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2728
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->literal_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$3000(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->literal_:Ljava/lang/Object;

    .line 2731
    :cond_4
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$3100(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2732
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2733
    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$3100(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    .line 2734
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2741
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_0

    .line 2736
    :cond_6
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->ensureSubslotIsMutable()V

    .line 2737
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    #getter for: Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->subslot_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$3100(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setConfidence(F)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2901
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2902
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->confidence_:F

    .line 2904
    return-object p0
.end method
