.class public final Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternatesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;",
        "Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;",
        ">;",
        "Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternatesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private maxSpanLength_:I

.field private span_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation
.end field

.field private unit_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 858
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    .line 746
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->maybeForceBuilderInitialization()V

    .line 747
    return-void
.end method

.method static synthetic access$800()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1

    .prologue
    .line 740
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->create()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1

    .prologue
    .line 752
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSpanIsMutable()V
    .locals 2

    .prologue
    .line 861
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 862
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    .line 863
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 865
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 750
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->build()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 2

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    .line 776
    .local v0, result:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 777
    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 779
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 5

    .prologue
    .line 783
    new-instance v1, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V

    .line 784
    .local v1, result:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 785
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 786
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 787
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    .line 788
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 790
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    #setter for: Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->access$1002(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;Ljava/util/List;)Ljava/util/List;

    .line 791
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 792
    or-int/lit8 v2, v2, 0x1

    .line 794
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->maxSpanLength_:I

    #setter for: Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->access$1102(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;I)I

    .line 795
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 796
    or-int/lit8 v2, v2, 0x2

    .line 798
    :cond_2
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->unit_:I

    #setter for: Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->unit_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->access$1202(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;I)I

    .line 799
    #setter for: Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->access$1302(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;I)I

    .line 800
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 2

    .prologue
    .line 767
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->create()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

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
    .line 740
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 771
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public getSpan(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter "index"

    .prologue
    .line 874
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object v0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasMaxSpanLength()Z
    .locals 2

    .prologue
    .line 949
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

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

    .line 825
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->hasMaxSpanLength()Z

    move-result v2

    if-nez v2, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v1

    .line 829
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->getSpanCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 830
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->getSpan(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 835
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
    .line 740
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 740
    check-cast p1, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

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
    .line 740
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 842
    const/4 v2, 0x0

    .line 844
    .local v2, parsedMessage:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    if-eqz v2, :cond_0

    .line 850
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    .line 853
    :cond_0
    return-object p0

    .line 845
    :catch_0
    move-exception v1

    .line 846
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-object v2, v0

    .line 847
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 850
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 804
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-object p0

    .line 805
    :cond_1
    #getter for: Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->access$1000(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 806
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 807
    #getter for: Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->access$1000(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    .line 808
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 815
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->hasMaxSpanLength()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 816
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getMaxSpanLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->setMaxSpanLength(I)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    .line 818
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->hasUnit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getUnit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->setUnit(I)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    goto :goto_0

    .line 810
    :cond_4
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->ensureSpanIsMutable()V

    .line 811
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    #getter for: Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->access$1000(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setMaxSpanLength(I)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 955
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 956
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->maxSpanLength_:I

    .line 958
    return-object p0
.end method

.method public setUnit(I)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 976
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 977
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->unit_:I

    .line 979
    return-object p0
.end method
