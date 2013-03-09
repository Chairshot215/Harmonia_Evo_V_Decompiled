.class public final Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;",
        ">;",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptorOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidence_:I

.field private featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

.field private historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field private historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

.field private language_:Ljava/lang/Object;

.field private latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

.field private latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

.field private loc_:Ljava/lang/Object;

.field private producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field private provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

.field private radius_:F

.field private role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2580
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2769
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2793
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2838
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->loc_:Ljava/lang/Object;

    .line 2891
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2934
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2998
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->confidence_:I

    .line 3019
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 3062
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->language_:Ljava/lang/Object;

    .line 3115
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->UNREMARKABLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 3139
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 3163
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2581
    invoke-direct {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->maybeForceBuilderInitialization()V

    .line 2582
    return-void
.end method

.method static synthetic access$2200()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 2575
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->create()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1

    .prologue
    .line 2587
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2585
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->build()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 2

    .prologue
    .line 2630
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    .line 2631
    .local v0, result:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2632
    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2634
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 5

    .prologue
    .line 2638
    new-instance v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V

    .line 2639
    .local v1, result:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2640
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2641
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2642
    or-int/lit8 v2, v2, 0x1

    .line 2644
    :cond_0
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    invoke-static {v1, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$2402(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2645
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2646
    or-int/lit8 v2, v2, 0x2

    .line 2648
    :cond_1
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    invoke-static {v1, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$2502(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2649
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2650
    or-int/lit8 v2, v2, 0x4

    .line 2652
    :cond_2
    iget-wide v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->timestamp_:J

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$2602(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;J)J

    .line 2653
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2654
    or-int/lit8 v2, v2, 0x8

    .line 2656
    :cond_3
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->loc_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$2702(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2657
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2658
    or-int/lit8 v2, v2, 0x10

    .line 2660
    :cond_4
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    invoke-static {v1, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$2802(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2661
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 2662
    or-int/lit8 v2, v2, 0x20

    .line 2664
    :cond_5
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    invoke-static {v1, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$2902(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2665
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 2666
    or-int/lit8 v2, v2, 0x40

    .line 2668
    :cond_6
    iget v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->radius_:F

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F
    invoke-static {v1, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3002(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;F)F

    .line 2669
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 2670
    or-int/lit16 v2, v2, 0x80

    .line 2672
    :cond_7
    iget v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->confidence_:I

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I
    invoke-static {v1, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3102(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;I)I

    .line 2673
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 2674
    or-int/lit16 v2, v2, 0x100

    .line 2676
    :cond_8
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    invoke-static {v1, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3202(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 2677
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 2678
    or-int/lit16 v2, v2, 0x200

    .line 2680
    :cond_9
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->language_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3302(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2681
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 2682
    or-int/lit16 v2, v2, 0x400

    .line 2684
    :cond_a
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;
    invoke-static {v1, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3402(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 2685
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 2686
    or-int/lit16 v2, v2, 0x800

    .line 2688
    :cond_b
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    invoke-static {v1, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3502(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2689
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 2690
    or-int/lit16 v2, v2, 0x1000

    .line 2692
    :cond_c
    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    invoke-static {v1, v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3602(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2693
    #setter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3702(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;I)I

    .line 2694
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 2

    .prologue
    .line 2622
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->create()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

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
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->clone()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2575
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 2626
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2746
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFeatureId(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3043
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3045
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 3051
    :goto_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3052
    return-object p0

    .line 3048
    :cond_0
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

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
    .line 2575
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2575
    check-cast p1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

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
    .line 2575
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2753
    const/4 v2, 0x0

    .line 2755
    .local v2, parsedMessage:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    :try_start_0
    sget-object v3, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2760
    if-eqz v2, :cond_0

    .line 2761
    invoke-virtual {p0, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2764
    :cond_0
    return-object p0

    .line 2756
    :catch_0
    move-exception v1

    .line 2757
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-object v2, v0

    .line 2758
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2760
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2761
    invoke-virtual {p0, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 2698
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2742
    :cond_0
    :goto_0
    return-object p0

    .line 2699
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasRole()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2700
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getRole()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setRole(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2702
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasProducer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2703
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getProducer()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setProducer(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2705
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2706
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setTimestamp(J)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2708
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasLoc()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2709
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2710
    #getter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$2700(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->loc_:Ljava/lang/Object;

    .line 2713
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlng()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2714
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getLatlng()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeLatlng(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2716
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlngSpan()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2717
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getLatlngSpan()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeLatlngSpan(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2719
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasRadius()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2720
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getRadius()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setRadius(F)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2722
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2723
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getConfidence()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setConfidence(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2725
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasFeatureId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2726
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getFeatureId()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFeatureId(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2728
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2729
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2730
    #getter for: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->access$3300(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->language_:Ljava/lang/Object;

    .line 2733
    :cond_b
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasProvenance()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2734
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getProvenance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setProvenance(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2736
    :cond_c
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalRole()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2737
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getHistoricalRole()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setHistoricalRole(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 2739
    :cond_d
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProducer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2740
    invoke-virtual {p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getHistoricalProducer()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setHistoricalProducer(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    goto/16 :goto_0
.end method

.method public mergeLatlng(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2915
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2917
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2923
    :goto_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2924
    return-object p0

    .line 2920
    :cond_0
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    goto :goto_0
.end method

.method public mergeLatlngSpan(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2958
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2960
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-static {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2966
    :goto_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2967
    return-object p0

    .line 2963
    :cond_0
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    goto :goto_0
.end method

.method public setConfidence(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3006
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3007
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->confidence_:I

    .line 3009
    return-object p0
.end method

.method public setHistoricalProducer(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3171
    if-nez p1, :cond_0

    .line 3172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3174
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3175
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 3177
    return-object p0
.end method

.method public setHistoricalRole(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3147
    if-nez p1, :cond_0

    .line 3148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3150
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3151
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 3153
    return-object p0
.end method

.method public setLatlng(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2899
    if-nez p1, :cond_0

    .line 2900
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2902
    :cond_0
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2904
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2905
    return-object p0
.end method

.method public setProducer(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2801
    if-nez p1, :cond_0

    .line 2802
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2804
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2805
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2807
    return-object p0
.end method

.method public setProvenance(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3123
    if-nez p1, :cond_0

    .line 3124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3126
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 3127
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 3129
    return-object p0
.end method

.method public setRadius(F)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2985
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2986
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->radius_:F

    .line 2988
    return-object p0
.end method

.method public setRole(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2777
    if-nez p1, :cond_0

    .line 2778
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2780
    :cond_0
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2781
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2783
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2825
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->bitField0_:I

    .line 2826
    iput-wide p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->timestamp_:J

    .line 2828
    return-object p0
.end method
