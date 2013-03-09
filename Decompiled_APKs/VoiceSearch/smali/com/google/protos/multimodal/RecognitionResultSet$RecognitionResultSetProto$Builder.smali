.class public final Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RecognitionResultSet.java"

# interfaces
.implements Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;",
        "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;",
        ">;",
        "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidencehighthreshold_:I

.field private confidencelowthreshold_:I

.field private results_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1000
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    .line 892
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->maybeForceBuilderInitialization()V

    .line 893
    return-void
.end method

.method static synthetic access$900()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1

    .prologue
    .line 886
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->create()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1

    .prologue
    .line 898
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    invoke-direct {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;-><init>()V

    return-object v0
.end method

.method private ensureResultsIsMutable()V
    .locals 2

    .prologue
    .line 1003
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1004
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    .line 1005
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 1007
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 896
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->build()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 2

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    .line 922
    .local v0, result:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    invoke-virtual {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 923
    invoke-static {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 925
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 5

    .prologue
    .line 929
    new-instance v1, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/multimodal/RecognitionResultSet$1;)V

    .line 930
    .local v1, result:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 931
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 932
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 933
    iget-object v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    .line 934
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 936
    :cond_0
    iget-object v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    #setter for: Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->access$1102(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;Ljava/util/List;)Ljava/util/List;

    .line 937
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 938
    or-int/lit8 v2, v2, 0x1

    .line 940
    :cond_1
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->confidencehighthreshold_:I

    #setter for: Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencehighthreshold_:I
    invoke-static {v1, v3}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->access$1202(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I

    .line 941
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 942
    or-int/lit8 v2, v2, 0x2

    .line 944
    :cond_2
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->confidencelowthreshold_:I

    #setter for: Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->confidencelowthreshold_:I
    invoke-static {v1, v3}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->access$1302(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I

    .line 945
    #setter for: Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->access$1402(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I

    .line 946
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->clone()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->clone()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 2

    .prologue
    .line 913
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->create()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

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
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->clone()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1

    .prologue
    .line 917
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    return-object v0
.end method

.method public getResults(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object v0
.end method

.method public getResultsCount()I
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 971
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->getResultsCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 972
    invoke-virtual {p0, v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->getResults(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 974
    const/4 v1, 0x0

    .line 977
    :goto_1
    return v1

    .line 971
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 977
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
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
    .line 886
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 886
    check-cast p1, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

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
    .line 886
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 984
    const/4 v2, 0x0

    .line 986
    .local v2, parsedMessage:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    :try_start_0
    sget-object v3, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    if-eqz v2, :cond_0

    .line 992
    invoke-virtual {p0, v2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    .line 995
    :cond_0
    return-object p0

    .line 987
    :catch_0
    move-exception v1

    .line 988
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-object v2, v0

    .line 989
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 991
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 992
    invoke-virtual {p0, v2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 950
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-object p0

    .line 951
    :cond_1
    #getter for: Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->access$1100(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 952
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 953
    #getter for: Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->access$1100(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    .line 954
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 961
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->hasConfidencehighthreshold()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 962
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getConfidencehighthreshold()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->setConfidencehighthreshold(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    .line 964
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->hasConfidencelowthreshold()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getConfidencelowthreshold()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->setConfidencelowthreshold(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    goto :goto_0

    .line 956
    :cond_4
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->ensureResultsIsMutable()V

    .line 957
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    #getter for: Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->results_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->access$1100(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setConfidencehighthreshold(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1097
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 1098
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->confidencehighthreshold_:I

    .line 1100
    return-object p0
.end method

.method public setConfidencelowthreshold(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1118
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 1119
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->confidencelowthreshold_:I

    .line 1121
    return-object p0
.end method
