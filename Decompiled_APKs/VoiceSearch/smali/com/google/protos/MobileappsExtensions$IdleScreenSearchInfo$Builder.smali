.class public final Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;",
        ">;",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private actionProperties_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;",
            ">;"
        }
    .end annotation
.end field

.field private actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

.field private action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

.field private bandwidth_:I

.field private bitField0_:I

.field private bitField1_:I

.field private cellid_:Ljava/lang/Object;

.field private currentMccMnc_:I

.field private deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

.field private dropListItems_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;",
            ">;"
        }
    .end annotation
.end field

.field private droplistCursor_:I

.field private droplistText_:Ljava/lang/Object;

.field private droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

.field private durationMs_:I

.field private featureTypes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;",
            ">;"
        }
    .end annotation
.end field

.field private gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

.field private homeMccMnc_:I

.field private latencies_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;",
            ">;"
        }
    .end annotation
.end field

.field private latencyFactor_:I

.field private latencyTimeout_:Z

.field private latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

.field private latitude_:I

.field private locationWasAvailable_:Z

.field private longitude_:I

.field private networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

.field private newCountryCode_:Ljava/lang/Object;

.field private numGaiaAccounts_:I

.field private oldCountryCode_:Ljava/lang/Object;

.field private phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

.field private rimVendorId_:I

.field private safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

.field private signalStrength_:I

.field private suggestionSourceIndex_:I

.field private suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

.field private tcpApnSetting_:Ljava/lang/Object;

.field private textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

.field private text_:Ljava/lang/Object;

.field private timestamp_:J

.field private userStudyId_:Ljava/lang/Object;

.field private utteranceId_:Ljava/lang/Object;

.field private voiceSearchActionSlot_:Ljava/lang/Object;

.field private voiceSearchAction_:Ljava/lang/Object;

.field private voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

.field private voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

.field private voiceSearchLanguage_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6449
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6962
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->userStudyId_:Ljava/lang/Object;

    .line 7015
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->KEYSTROKE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    .line 7039
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    .line 7113
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 7137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistText_:Ljava/lang/Object;

    .line 7190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->cellid_:Ljava/lang/Object;

    .line 7327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    .line 7437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->utteranceId_:Ljava/lang/Object;

    .line 7490
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 7543
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->NONE_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    .line 7630
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->tcpApnSetting_:Ljava/lang/Object;

    .line 7683
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->BB_GREEN_KEY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    .line 7728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newCountryCode_:Ljava/lang/Object;

    .line 7781
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->oldCountryCode_:Ljava/lang/Object;

    .line 7855
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 7921
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    .line 7972
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->SUGGESTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    .line 7996
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->DEFAULT_SOURCE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    .line 8041
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->PORTRAIT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    .line 8086
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->AUTO_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 8110
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->HOME_WIDGET:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 8134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    .line 8223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    .line 8276
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 8329
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    .line 8380
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->HTTP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 8404
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 8447
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->PHONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    .line 6450
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->maybeForceBuilderInitialization()V

    .line 6451
    return-void
.end method

.method static synthetic access$4700()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 6444
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 6456
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActionPropertiesIsMutable()V
    .locals 2

    .prologue
    .line 8332
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 8333
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    .line 8334
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8336
    :cond_0
    return-void
.end method

.method private ensureDropListItemsIsMutable()V
    .locals 2

    .prologue
    .line 7330
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_0

    .line 7331
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    .line 7332
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7334
    :cond_0
    return-void
.end method

.method private ensureFeatureTypesIsMutable()V
    .locals 3

    .prologue
    const/high16 v2, 0x1000

    .line 7924
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 7925
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    .line 7926
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7928
    :cond_0
    return-void
.end method

.method private ensureLatenciesIsMutable()V
    .locals 2

    .prologue
    .line 8137
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 8138
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    .line 8139
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8141
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 6454
    return-void
.end method


# virtual methods
.method public addLatencies(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 8190
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureLatenciesIsMutable()V

    .line 8191
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8193
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6444
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 2

    .prologue
    .line 6559
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    .line 6560
    .local v0, result:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6561
    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6563
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6444
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 12

    .prologue
    const/high16 v11, 0x4

    const/high16 v10, 0x2

    const/high16 v9, 0x1

    const v8, 0x8000

    const/high16 v7, -0x8000

    .line 6567
    new-instance v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V

    .line 6568
    .local v2, result:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6569
    .local v0, from_bitField0_:I
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6570
    .local v1, from_bitField1_:I
    const/4 v3, 0x0

    .line 6571
    .local v3, to_bitField0_:I
    const/4 v4, 0x0

    .line 6572
    .local v4, to_bitField1_:I
    and-int/lit8 v5, v0, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 6573
    or-int/lit8 v3, v3, 0x1

    .line 6575
    :cond_0
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->userStudyId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$4902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6576
    and-int/lit8 v5, v0, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 6577
    or-int/lit8 v3, v3, 0x2

    .line 6579
    :cond_1
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    .line 6580
    and-int/lit8 v5, v0, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 6581
    or-int/lit8 v3, v3, 0x4

    .line 6583
    :cond_2
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6584
    and-int/lit8 v5, v0, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 6585
    or-int/lit8 v3, v3, 0x8

    .line 6587
    :cond_3
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistCursor_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistCursor_:I
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6588
    and-int/lit8 v5, v0, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_4

    .line 6589
    or-int/lit8 v3, v3, 0x10

    .line 6591
    :cond_4
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 6592
    and-int/lit8 v5, v0, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_5

    .line 6593
    or-int/lit8 v3, v3, 0x20

    .line 6595
    :cond_5
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistText_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6596
    and-int/lit8 v5, v0, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_6

    .line 6597
    or-int/lit8 v3, v3, 0x40

    .line 6599
    :cond_6
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->cellid_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6600
    and-int/lit16 v5, v0, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_7

    .line 6601
    or-int/lit16 v3, v3, 0x80

    .line 6603
    :cond_7
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latitude_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latitude_:I
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6604
    and-int/lit16 v5, v0, 0x100

    const/16 v6, 0x100

    if-ne v5, v6, :cond_8

    .line 6605
    or-int/lit16 v3, v3, 0x100

    .line 6607
    :cond_8
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->longitude_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->longitude_:I
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6608
    and-int/lit16 v5, v0, 0x200

    const/16 v6, 0x200

    if-ne v5, v6, :cond_9

    .line 6609
    or-int/lit16 v3, v3, 0x200

    .line 6611
    :cond_9
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->durationMs_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->durationMs_:I
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6612
    and-int/lit16 v5, v0, 0x400

    const/16 v6, 0x400

    if-ne v5, v6, :cond_a

    .line 6613
    or-int/lit16 v3, v3, 0x400

    .line 6615
    :cond_a
    iget-boolean v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->locationWasAvailable_:Z

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->locationWasAvailable_:Z
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Z)Z

    .line 6616
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v5, v5, 0x800

    const/16 v6, 0x800

    if-ne v5, v6, :cond_b

    .line 6617
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    .line 6618
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v5, v5, -0x801

    iput v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6620
    :cond_b
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;

    .line 6621
    and-int/lit16 v5, v0, 0x1000

    const/16 v6, 0x1000

    if-ne v5, v6, :cond_c

    .line 6622
    or-int/lit16 v3, v3, 0x800

    .line 6624
    :cond_c
    iget-wide v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->timestamp_:J

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->timestamp_:J
    invoke-static {v2, v5, v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;J)J

    .line 6625
    and-int/lit16 v5, v0, 0x2000

    const/16 v6, 0x2000

    if-ne v5, v6, :cond_d

    .line 6626
    or-int/lit16 v3, v3, 0x1000

    .line 6628
    :cond_d
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->utteranceId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6629
    and-int/lit16 v5, v0, 0x4000

    const/16 v6, 0x4000

    if-ne v5, v6, :cond_e

    .line 6630
    or-int/lit16 v3, v3, 0x2000

    .line 6632
    :cond_e
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6633
    and-int v5, v0, v8

    if-ne v5, v8, :cond_f

    .line 6634
    or-int/lit16 v3, v3, 0x4000

    .line 6636
    :cond_f
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    .line 6637
    and-int v5, v0, v9

    if-ne v5, v9, :cond_10

    .line 6638
    or-int/2addr v3, v8

    .line 6640
    :cond_10
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->homeMccMnc_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->homeMccMnc_:I
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6641
    and-int v5, v0, v10

    if-ne v5, v10, :cond_11

    .line 6642
    or-int/2addr v3, v9

    .line 6644
    :cond_11
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->currentMccMnc_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->currentMccMnc_:I
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6645
    and-int v5, v0, v11

    if-ne v5, v11, :cond_12

    .line 6646
    or-int/2addr v3, v10

    .line 6648
    :cond_12
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->rimVendorId_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->rimVendorId_:I
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6649
    const/high16 v5, 0x8

    and-int/2addr v5, v0

    const/high16 v6, 0x8

    if-ne v5, v6, :cond_13

    .line 6650
    or-int/2addr v3, v11

    .line 6652
    :cond_13
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->tcpApnSetting_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6653
    const/high16 v5, 0x10

    and-int/2addr v5, v0

    const/high16 v6, 0x10

    if-ne v5, v6, :cond_14

    .line 6654
    const/high16 v5, 0x8

    or-int/2addr v3, v5

    .line 6656
    :cond_14
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    .line 6657
    const/high16 v5, 0x20

    and-int/2addr v5, v0

    const/high16 v6, 0x20

    if-ne v5, v6, :cond_15

    .line 6658
    const/high16 v5, 0x10

    or-int/2addr v3, v5

    .line 6660
    :cond_15
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->signalStrength_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->signalStrength_:I
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6661
    const/high16 v5, 0x40

    and-int/2addr v5, v0

    const/high16 v6, 0x40

    if-ne v5, v6, :cond_16

    .line 6662
    const/high16 v5, 0x20

    or-int/2addr v3, v5

    .line 6664
    :cond_16
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newCountryCode_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6665
    const/high16 v5, 0x80

    and-int/2addr v5, v0

    const/high16 v6, 0x80

    if-ne v5, v6, :cond_17

    .line 6666
    const/high16 v5, 0x40

    or-int/2addr v3, v5

    .line 6668
    :cond_17
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->oldCountryCode_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6669
    const/high16 v5, 0x100

    and-int/2addr v5, v0

    const/high16 v6, 0x100

    if-ne v5, v6, :cond_18

    .line 6670
    const/high16 v5, 0x80

    or-int/2addr v3, v5

    .line 6672
    :cond_18
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bandwidth_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bandwidth_:I
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6673
    const/high16 v5, 0x200

    and-int/2addr v5, v0

    const/high16 v6, 0x200

    if-ne v5, v6, :cond_19

    .line 6674
    const/high16 v5, 0x100

    or-int/2addr v3, v5

    .line 6676
    :cond_19
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 6677
    const/high16 v5, 0x400

    and-int/2addr v5, v0

    const/high16 v6, 0x400

    if-ne v5, v6, :cond_1a

    .line 6678
    const/high16 v5, 0x200

    or-int/2addr v3, v5

    .line 6680
    :cond_1a
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyFactor_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyFactor_:I
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6681
    const/high16 v5, 0x800

    and-int/2addr v5, v0

    const/high16 v6, 0x800

    if-ne v5, v6, :cond_1b

    .line 6682
    const/high16 v5, 0x400

    or-int/2addr v3, v5

    .line 6684
    :cond_1b
    iget-boolean v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyTimeout_:Z

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyTimeout_:Z
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Z)Z

    .line 6685
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v6, 0x1000

    and-int/2addr v5, v6

    const/high16 v6, 0x1000

    if-ne v5, v6, :cond_1c

    .line 6686
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    .line 6687
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v6, -0x10000001

    and-int/2addr v5, v6

    iput v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6689
    :cond_1c
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;

    .line 6690
    const/high16 v5, 0x2000

    and-int/2addr v5, v0

    const/high16 v6, 0x2000

    if-ne v5, v6, :cond_1d

    .line 6691
    const/high16 v5, 0x800

    or-int/2addr v3, v5

    .line 6693
    :cond_1d
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    .line 6694
    const/high16 v5, 0x4000

    and-int/2addr v5, v0

    const/high16 v6, 0x4000

    if-ne v5, v6, :cond_1e

    .line 6695
    const/high16 v5, 0x1000

    or-int/2addr v3, v5

    .line 6697
    :cond_1e
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    .line 6698
    and-int v5, v0, v7

    if-ne v5, v7, :cond_1f

    .line 6699
    const/high16 v5, 0x2000

    or-int/2addr v3, v5

    .line 6701
    :cond_1f
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSourceIndex_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSourceIndex_:I
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6702
    and-int/lit8 v5, v1, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 6703
    const/high16 v5, 0x4000

    or-int/2addr v3, v5

    .line 6705
    :cond_20
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    .line 6706
    and-int/lit8 v5, v1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_21

    .line 6707
    or-int/2addr v3, v7

    .line 6709
    :cond_21
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->numGaiaAccounts_:I

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->numGaiaAccounts_:I
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6710
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_22

    .line 6711
    or-int/lit8 v4, v4, 0x1

    .line 6713
    :cond_22
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 6714
    and-int/lit8 v5, v1, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_23

    .line 6715
    or-int/lit8 v4, v4, 0x2

    .line 6717
    :cond_23
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 6718
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_24

    .line 6719
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    .line 6720
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v5, v5, -0x11

    iput v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6722
    :cond_24
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;

    .line 6723
    and-int/lit8 v5, v1, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_25

    .line 6724
    or-int/lit8 v4, v4, 0x4

    .line 6726
    :cond_25
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6727
    and-int/lit8 v5, v1, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_26

    .line 6728
    or-int/lit8 v4, v4, 0x8

    .line 6730
    :cond_26
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchActionSlot_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6731
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v5, v5, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_27

    .line 6732
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    .line 6733
    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v5, v5, -0x81

    iput v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6735
    :cond_27
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;

    .line 6736
    and-int/lit16 v5, v1, 0x100

    const/16 v6, 0x100

    if-ne v5, v6, :cond_28

    .line 6737
    or-int/lit8 v4, v4, 0x10

    .line 6739
    :cond_28
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 6740
    and-int/lit16 v5, v1, 0x200

    const/16 v6, 0x200

    if-ne v5, v6, :cond_29

    .line 6741
    or-int/lit8 v4, v4, 0x20

    .line 6743
    :cond_29
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$9002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 6744
    and-int/lit16 v5, v1, 0x400

    const/16 v6, 0x400

    if-ne v5, v6, :cond_2a

    .line 6745
    or-int/lit8 v4, v4, 0x40

    .line 6747
    :cond_2a
    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
    invoke-static {v2, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$9102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    .line 6748
    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I
    invoke-static {v2, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$9202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6749
    #setter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I
    invoke-static {v2, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$9302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I

    .line 6750
    return-object v2
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6444
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6444
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2

    .prologue
    .line 6551
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

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
    .line 6444
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->clone()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 6444
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6444
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1

    .prologue
    .line 6555
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6938
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
    .line 6444
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6444
    check-cast p1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

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
    .line 6444
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6945
    const/4 v2, 0x0

    .line 6947
    .local v2, parsedMessage:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    :try_start_0
    sget-object v3, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6952
    if-eqz v2, :cond_0

    .line 6953
    invoke-virtual {p0, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6956
    :cond_0
    return-object p0

    .line 6948
    :catch_0
    move-exception v1

    .line 6949
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-object v2, v0

    .line 6950
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6952
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 6953
    invoke-virtual {p0, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 6754
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 6934
    :cond_0
    :goto_0
    return-object p0

    .line 6755
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasUserStudyId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6756
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6757
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$4900(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->userStudyId_:Ljava/lang/Object;

    .line 6760
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6761
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getAction()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6763
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6764
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6765
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5100(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    .line 6768
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasDroplistCursor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6769
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDroplistCursor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setDroplistCursor(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6771
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasDroplistType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6772
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDroplistType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setDroplistType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6774
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasDroplistText()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6775
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6776
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5400(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistText_:Ljava/lang/Object;

    .line 6779
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasCellid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6780
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6781
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$5500(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->cellid_:Ljava/lang/Object;

    .line 6784
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6785
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getLatitude()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setLatitude(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6787
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6788
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getLongitude()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setLongitude(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6790
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasDurationMs()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6791
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDurationMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setDurationMs(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6793
    :cond_b
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasLocationWasAvailable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6794
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getLocationWasAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setLocationWasAvailable(Z)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6796
    :cond_c
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6000(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 6797
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 6798
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6000(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    .line 6799
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6806
    :cond_d
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6807
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setTimestamp(J)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6809
    :cond_e
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasUtteranceId()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6810
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6811
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6200(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->utteranceId_:Ljava/lang/Object;

    .line 6814
    :cond_f
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasVoiceSearchLanguage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6815
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6816
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6300(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 6819
    :cond_10
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasSafeSearchFilter()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6820
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getSafeSearchFilter()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setSafeSearchFilter(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6822
    :cond_11
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasHomeMccMnc()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6823
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getHomeMccMnc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setHomeMccMnc(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6825
    :cond_12
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasCurrentMccMnc()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6826
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getCurrentMccMnc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setCurrentMccMnc(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6828
    :cond_13
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasRimVendorId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6829
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getRimVendorId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setRimVendorId(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6831
    :cond_14
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasTcpApnSetting()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6832
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6833
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6800(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->tcpApnSetting_:Ljava/lang/Object;

    .line 6836
    :cond_15
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasVoiceSearchButton()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6837
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchButton()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchButton(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6839
    :cond_16
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6840
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getSignalStrength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setSignalStrength(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6842
    :cond_17
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasNewCountryCode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 6843
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6844
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7100(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->newCountryCode_:Ljava/lang/Object;

    .line 6847
    :cond_18
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasOldCountryCode()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6848
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6849
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7200(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->oldCountryCode_:Ljava/lang/Object;

    .line 6852
    :cond_19
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasBandwidth()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6853
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getBandwidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setBandwidth(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6855
    :cond_1a
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasLatencyType()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6856
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getLatencyType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setLatencyType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6858
    :cond_1b
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasLatencyFactor()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6859
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getLatencyFactor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setLatencyFactor(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6861
    :cond_1c
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasLatencyTimeout()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6862
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getLatencyTimeout()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setLatencyTimeout(Z)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6864
    :cond_1d
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7700(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 6865
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6866
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7700(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    .line 6867
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 6874
    :cond_1e
    :goto_2
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasPhoneTopDisplay()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6875
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getPhoneTopDisplay()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setPhoneTopDisplay(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6877
    :cond_1f
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasSuggestionSource()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6878
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getSuggestionSource()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setSuggestionSource(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6880
    :cond_20
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasSuggestionSourceIndex()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6881
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getSuggestionSourceIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setSuggestionSourceIndex(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6883
    :cond_21
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasDeviceOrientation()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6884
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDeviceOrientation()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setDeviceOrientation(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6886
    :cond_22
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasNumGaiaAccounts()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6887
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getNumGaiaAccounts()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setNumGaiaAccounts(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6889
    :cond_23
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasGaiaBrowserUsage()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 6890
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getGaiaBrowserUsage()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setGaiaBrowserUsage(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6892
    :cond_24
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasActionTrigger()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 6893
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getActionTrigger()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setActionTrigger(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6895
    :cond_25
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8500(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 6896
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 6897
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8500(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    .line 6898
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6905
    :cond_26
    :goto_3
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasVoiceSearchAction()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6906
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6907
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8600(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    .line 6910
    :cond_27
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasVoiceSearchActionSlot()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 6911
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6912
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8700(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 6915
    :cond_28
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8800(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 6916
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 6917
    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8800(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    .line 6918
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 6925
    :cond_29
    :goto_4
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasNetworkProtocol()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6926
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getNetworkProtocol()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setNetworkProtocol(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6928
    :cond_2a
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasTextModification()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 6929
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getTextModification()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeTextModification(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    .line 6931
    :cond_2b
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->hasVoiceSearchContactAddressType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6932
    invoke-virtual {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchContactAddressType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->setVoiceSearchContactAddressType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    goto/16 :goto_0

    .line 6801
    :cond_2c
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureDropListItemsIsMutable()V

    .line 6802
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->dropListItems_:Ljava/util/List;

    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$6000(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 6869
    :cond_2d
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureFeatureTypesIsMutable()V

    .line 6870
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->featureTypes_:Ljava/util/List;

    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$7700(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 6900
    :cond_2e
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureLatenciesIsMutable()V

    .line 6901
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencies_:Ljava/util/List;

    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8500(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 6920
    :cond_2f
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->ensureActionPropertiesIsMutable()V

    .line 6921
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionProperties_:Ljava/util/List;

    #getter for: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->access$8800(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4
.end method

.method public mergeTextModification(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8428
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8430
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-static {v0}, Lcom/google/protos/MobileappsExtensions$TextModification;->newBuilder(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 8436
    :goto_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8437
    return-object p0

    .line 8433
    :cond_0
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    goto :goto_0
.end method

.method public setAction(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7023
    if-nez p1, :cond_0

    .line 7024
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7026
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7027
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    .line 7029
    return-object p0
.end method

.method public setActionTrigger(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8118
    if-nez p1, :cond_0

    .line 8119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8121
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8122
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 8124
    return-object p0
.end method

.method public setBandwidth(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7842
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7843
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bandwidth_:I

    .line 7845
    return-object p0
.end method

.method public setCurrentMccMnc(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7596
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7597
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->currentMccMnc_:I

    .line 7599
    return-object p0
.end method

.method public setDeviceOrientation(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8049
    if-nez p1, :cond_0

    .line 8050
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8052
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8053
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    .line 8055
    return-object p0
.end method

.method public setDroplistCursor(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7100
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7101
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistCursor_:I

    .line 7103
    return-object p0
.end method

.method public setDroplistType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7121
    if-nez p1, :cond_0

    .line 7122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7124
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7125
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 7127
    return-object p0
.end method

.method public setDurationMs(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7293
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7294
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->durationMs_:I

    .line 7296
    return-object p0
.end method

.method public setGaiaBrowserUsage(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8094
    if-nez p1, :cond_0

    .line 8095
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8097
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8098
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 8100
    return-object p0
.end method

.method public setHomeMccMnc(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7575
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7576
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->homeMccMnc_:I

    .line 7578
    return-object p0
.end method

.method public setLatencyFactor(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7887
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7888
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyFactor_:I

    .line 7890
    return-object p0
.end method

.method public setLatencyTimeout(Z)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7908
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7909
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyTimeout_:Z

    .line 7911
    return-object p0
.end method

.method public setLatencyType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7863
    if-nez p1, :cond_0

    .line 7864
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7866
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7867
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 7869
    return-object p0
.end method

.method public setLatitude(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7251
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7252
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->latitude_:I

    .line 7254
    return-object p0
.end method

.method public setLocationWasAvailable(Z)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7314
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7315
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->locationWasAvailable_:Z

    .line 7317
    return-object p0
.end method

.method public setLongitude(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7272
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7273
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->longitude_:I

    .line 7275
    return-object p0
.end method

.method public setNetworkProtocol(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8388
    if-nez p1, :cond_0

    .line 8389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8391
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8392
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 8394
    return-object p0
.end method

.method public setNumGaiaAccounts(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8073
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8074
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->numGaiaAccounts_:I

    .line 8076
    return-object p0
.end method

.method public setPhoneTopDisplay(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7980
    if-nez p1, :cond_0

    .line 7981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7983
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7984
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    .line 7986
    return-object p0
.end method

.method public setRimVendorId(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7617
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7618
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->rimVendorId_:I

    .line 7620
    return-object p0
.end method

.method public setSafeSearchFilter(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7551
    if-nez p1, :cond_0

    .line 7552
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7554
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7555
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    .line 7557
    return-object p0
.end method

.method public setSignalStrength(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7715
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7716
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->signalStrength_:I

    .line 7718
    return-object p0
.end method

.method public setSuggestionSource(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8004
    if-nez p1, :cond_0

    .line 8005
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8007
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 8008
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    .line 8010
    return-object p0
.end method

.method public setSuggestionSourceIndex(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8028
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 8029
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->suggestionSourceIndex_:I

    .line 8031
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7066
    if-nez p1, :cond_0

    .line 7067
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7069
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7070
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->text_:Ljava/lang/Object;

    .line 7072
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7424
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7425
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->timestamp_:J

    .line 7427
    return-object p0
.end method

.method public setVoiceSearchAction(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8250
    if-nez p1, :cond_0

    .line 8251
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8253
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8254
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchAction_:Ljava/lang/Object;

    .line 8256
    return-object p0
.end method

.method public setVoiceSearchButton(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7691
    if-nez p1, :cond_0

    .line 7692
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7694
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField0_:I

    .line 7695
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    .line 7697
    return-object p0
.end method

.method public setVoiceSearchContactAddressType(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8455
    if-nez p1, :cond_0

    .line 8456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8458
    :cond_0
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->bitField1_:I

    .line 8459
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    .line 8461
    return-object p0
.end method
