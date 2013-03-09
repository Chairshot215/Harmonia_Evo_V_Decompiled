.class public final Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GoogleSearchRequest.java"

# interfaces
.implements Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;",
        ">;",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private applicationId_:Ljava/lang/Object;

.field private attributes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private clientId_:Ljava/lang/Object;

.field private httpHeader_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;"
        }
    .end annotation
.end field

.field private latLong_:Ljava/lang/Object;

.field private masfCookie_:Ljava/lang/Object;

.field private recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

.field private safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

.field private utteranceId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 863
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    .line 916
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 959
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    .line 1048
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->masfCookie_:Ljava/lang/Object;

    .line 1101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    .line 1154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->latLong_:Ljava/lang/Object;

    .line 1207
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;->NONE_FILTER:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    .line 1231
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    .line 1284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    .line 665
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->maybeForceBuilderInitialization()V

    .line 666
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->create()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1

    .prologue
    .line 671
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAttributesIsMutable()V
    .locals 2

    .prologue
    .line 962
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 963
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    .line 964
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 966
    :cond_0
    return-void
.end method

.method private ensureHttpHeaderIsMutable()V
    .locals 2

    .prologue
    .line 1287
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 1288
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    .line 1289
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1291
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 669
    return-void
.end method


# virtual methods
.method public addAttributes(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 995
    if-nez p1, :cond_0

    .line 996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 998
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureAttributesIsMutable()V

    .line 999
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    return-object p0
.end method

.method public addHttpHeader(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1320
    if-nez p1, :cond_0

    .line 1321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1323
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 1324
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1326
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
    .locals 2

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    .line 707
    .local v0, result:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 708
    invoke-static {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 710
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
    .locals 5

    .prologue
    .line 714
    new-instance v1, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/voicesearch/GoogleSearchRequest$1;)V

    .line 715
    .local v1, result:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 716
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 717
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 718
    or-int/lit8 v2, v2, 0x1

    .line 720
    :cond_0
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->applicationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$302(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 722
    or-int/lit8 v2, v2, 0x2

    .line 724
    :cond_1
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    #setter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    invoke-static {v1, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$402(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 725
    iget v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 726
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    .line 727
    iget v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 729
    :cond_2
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    #setter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$502(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/util/List;)Ljava/util/List;

    .line 730
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 731
    or-int/lit8 v2, v2, 0x4

    .line 733
    :cond_3
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->masfCookie_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->masfCookie_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$602(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 735
    or-int/lit8 v2, v2, 0x8

    .line 737
    :cond_4
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->utteranceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$702(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 739
    or-int/lit8 v2, v2, 0x10

    .line 741
    :cond_5
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->latLong_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->latLong_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$802(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 743
    or-int/lit8 v2, v2, 0x20

    .line 745
    :cond_6
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    #setter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;
    invoke-static {v1, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$902(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    .line 746
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 747
    or-int/lit8 v2, v2, 0x40

    .line 749
    :cond_7
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->clientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$1002(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 751
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    .line 752
    iget v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 754
    :cond_8
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    #setter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$1102(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/util/List;)Ljava/util/List;

    .line 755
    #setter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$1202(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;I)I

    .line 756
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 2

    .prologue
    .line 698
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->create()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

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
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object v0
.end method

.method public getAttributesCount()I
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
    .locals 1

    .prologue
    .line 702
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHeader(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object v0
.end method

.method public getHttpHeaderCount()I
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecognitionResultSet()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object v0
.end method

.method public hasApplicationId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 865
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRecognitionResultSet()Z
    .locals 2

    .prologue
    .line 918
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

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

    .line 816
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->hasApplicationId()Z

    move-result v2

    if-nez v2, :cond_1

    .line 840
    :cond_0
    :goto_0
    return v1

    .line 820
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->hasRecognitionResultSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->getRecognitionResultSet()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 828
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->getAttributesCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 829
    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->getAttributes(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 834
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->getHttpHeaderCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 835
    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->getHttpHeader(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 840
    :cond_3
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
    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 659
    check-cast p1, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

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
    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    const/4 v2, 0x0

    .line 849
    .local v2, parsedMessage:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
    :try_start_0
    sget-object v3, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    if-eqz v2, :cond_0

    .line 855
    invoke-virtual {p0, v2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 858
    :cond_0
    return-object p0

    .line 850
    :catch_0
    move-exception v1

    .line 851
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-object v2, v0

    .line 852
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 855
    invoke-virtual {p0, v2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 760
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-object p0

    .line 761
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasApplicationId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 763
    #getter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->applicationId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$300(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    .line 766
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasRecognitionResultSet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 767
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getRecognitionResultSet()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeRecognitionResultSet(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 769
    :cond_3
    #getter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$500(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 770
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 771
    #getter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$500(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    .line 772
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 779
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasMasfCookie()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 780
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 781
    #getter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->masfCookie_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$600(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->masfCookie_:Ljava/lang/Object;

    .line 784
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasUtteranceId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 785
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 786
    #getter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->utteranceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$700(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    .line 789
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasLatLong()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 790
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 791
    #getter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->latLong_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$800(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->latLong_:Ljava/lang/Object;

    .line 794
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasSafeSearchFilter()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 795
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getSafeSearchFilter()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->setSafeSearchFilter(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 797
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasClientId()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 798
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 799
    #getter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->clientId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$1000(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    .line 802
    :cond_9
    #getter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$1100(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 804
    #getter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$1100(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    .line 805
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 774
    :cond_a
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureAttributesIsMutable()V

    .line 775
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    #getter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$500(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 807
    :cond_b
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 808
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    #getter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$1100(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public mergeRecognitionResultSet(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 940
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 942
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    invoke-static {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilder(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 948
    :goto_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 949
    return-object p0

    .line 945
    :cond_0
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    goto :goto_0
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 890
    if-nez p1, :cond_0

    .line 891
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 893
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 894
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    .line 896
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1258
    if-nez p1, :cond_0

    .line 1259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1261
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1262
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    .line 1264
    return-object p0
.end method

.method public setRecognitionResultSet(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 924
    if-nez p1, :cond_0

    .line 925
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 927
    :cond_0
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 929
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 930
    return-object p0
.end method

.method public setSafeSearchFilter(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1215
    if-nez p1, :cond_0

    .line 1216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1218
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1219
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    .line 1221
    return-object p0
.end method

.method public setUtteranceId(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1128
    if-nez p1, :cond_0

    .line 1129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1131
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1132
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    .line 1134
    return-object p0
.end method
