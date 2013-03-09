.class public final Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdleScreenSearchInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatenciesOrBuilder;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItemsOrBuilder;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;,
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3071
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8474
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    .line 8475
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->initFields()V

    .line 8476
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 13
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2702
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6043
    const/4 v10, -0x1

    iput-byte v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedIsInitialized:B

    .line 6186
    const/4 v10, -0x1

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedSerializedSize:I

    .line 2703
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->initFields()V

    .line 2704
    const/4 v3, 0x0

    .line 2705
    .local v3, mutable_bitField0_:I
    const/4 v4, 0x0

    .line 2707
    .local v4, mutable_bitField1_:I
    const/4 v0, 0x0

    .line 2708
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_11

    .line 2709
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v8

    .line 2710
    .local v8, tag:I
    sparse-switch v8, :sswitch_data_0

    .line 2715
    invoke-virtual {p0, p1, p2, v8}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2717
    const/4 v0, 0x1

    goto :goto_0

    .line 2712
    :sswitch_0
    const/4 v0, 0x1

    .line 2713
    goto :goto_0

    .line 2722
    :sswitch_1
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2723
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3050
    .end local v8           #tag:I
    :catch_0
    move-exception v1

    .line 3051
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v10

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3056
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v10

    and-int/lit16 v11, v3, 0x800

    const/16 v12, 0x800

    if-ne v11, v12, :cond_1

    .line 3057
    iget-object v11, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    .line 3059
    :cond_1
    const/high16 v11, 0x1000

    and-int/2addr v11, v3

    const/high16 v12, 0x1000

    if-ne v11, v12, :cond_2

    .line 3060
    iget-object v11, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    .line 3062
    :cond_2
    and-int/lit8 v11, v4, 0x10

    const/16 v12, 0x10

    if-ne v11, v12, :cond_3

    .line 3063
    iget-object v11, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    .line 3065
    :cond_3
    and-int/lit16 v11, v4, 0x80

    const/16 v12, 0x80

    if-ne v11, v12, :cond_4

    .line 3066
    iget-object v11, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    .line 3068
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->makeExtensionsImmutable()V

    throw v10

    .line 2727
    .restart local v8       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 2728
    .local v6, rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    move-result-object v9

    .line 2729
    .local v9, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;
    if-eqz v9, :cond_0

    .line 2730
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2731
    iput-object v9, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3052
    .end local v6           #rawValue:I
    .end local v8           #tag:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;
    :catch_1
    move-exception v1

    .line 3053
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v10, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v10

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2736
    .end local v1           #e:Ljava/io/IOException;
    .restart local v8       #tag:I
    :sswitch_3
    :try_start_4
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2737
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2741
    :sswitch_4
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2742
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistCursor_:I

    goto/16 :goto_0

    .line 2746
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 2747
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    move-result-object v9

    .line 2748
    .local v9, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    if-eqz v9, :cond_0

    .line 2749
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2750
    iput-object v9, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    goto/16 :goto_0

    .line 2755
    .end local v6           #rawValue:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    :sswitch_6
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit8 v10, v10, 0x20

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2756
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2760
    :sswitch_7
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit8 v10, v10, 0x40

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2761
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2765
    :sswitch_8
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v10, v10, 0x80

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2766
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latitude_:I

    goto/16 :goto_0

    .line 2770
    :sswitch_9
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v10, v10, 0x100

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2771
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->longitude_:I

    goto/16 :goto_0

    .line 2775
    :sswitch_a
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v10, v10, 0x200

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2776
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->durationMs_:I

    goto/16 :goto_0

    .line 2780
    :sswitch_b
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v10, v10, 0x400

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2781
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v10

    iput-boolean v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->locationWasAvailable_:Z

    goto/16 :goto_0

    .line 2785
    :sswitch_c
    and-int/lit16 v10, v3, 0x800

    const/16 v11, 0x800

    if-eq v10, v11, :cond_5

    .line 2786
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    .line 2787
    or-int/lit16 v3, v3, 0x800

    .line 2789
    :cond_5
    iget-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    const/16 v11, 0xc

    sget-object v12, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListItems;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, v12, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2794
    :sswitch_d
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v10, v10, 0x800

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2795
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->timestamp_:J

    goto/16 :goto_0

    .line 2799
    :sswitch_e
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v10, v10, 0x1000

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2800
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2804
    :sswitch_f
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v10, v10, 0x2000

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2805
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2809
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 2810
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    move-result-object v9

    .line 2811
    .local v9, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;
    if-eqz v9, :cond_0

    .line 2812
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    or-int/lit16 v10, v10, 0x4000

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2813
    iput-object v9, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    goto/16 :goto_0

    .line 2818
    .end local v6           #rawValue:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;
    :sswitch_11
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const v11, 0x8000

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2819
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->homeMccMnc_:I

    goto/16 :goto_0

    .line 2823
    :sswitch_12
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x1

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2824
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->currentMccMnc_:I

    goto/16 :goto_0

    .line 2828
    :sswitch_13
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x2

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2829
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->rimVendorId_:I

    goto/16 :goto_0

    .line 2833
    :sswitch_14
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x4

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2834
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2838
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 2839
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    move-result-object v9

    .line 2840
    .local v9, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;
    if-eqz v9, :cond_0

    .line 2841
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x8

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2842
    iput-object v9, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    goto/16 :goto_0

    .line 2847
    .end local v6           #rawValue:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;
    :sswitch_16
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x10

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2848
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->signalStrength_:I

    goto/16 :goto_0

    .line 2852
    :sswitch_17
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x20

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2853
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2857
    :sswitch_18
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x40

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2858
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2862
    :sswitch_19
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x80

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2863
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bandwidth_:I

    goto/16 :goto_0

    .line 2867
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 2868
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    move-result-object v9

    .line 2869
    .local v9, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    if-eqz v9, :cond_0

    .line 2870
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x100

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2871
    iput-object v9, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    goto/16 :goto_0

    .line 2876
    .end local v6           #rawValue:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    :sswitch_1b
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x200

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2877
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyFactor_:I

    goto/16 :goto_0

    .line 2881
    :sswitch_1c
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x400

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2882
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v10

    iput-boolean v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyTimeout_:Z

    goto/16 :goto_0

    .line 2886
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 2887
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    move-result-object v9

    .line 2888
    .local v9, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;
    if-eqz v9, :cond_0

    .line 2889
    const/high16 v10, 0x1000

    and-int/2addr v10, v3

    const/high16 v11, 0x1000

    if-eq v10, v11, :cond_6

    .line 2890
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    .line 2891
    const/high16 v10, 0x1000

    or-int/2addr v3, v10

    .line 2893
    :cond_6
    iget-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2898
    .end local v6           #rawValue:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 2899
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v5

    .line 2900
    .local v5, oldLimit:I
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v10

    if-lez v10, :cond_9

    .line 2901
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 2902
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    move-result-object v9

    .line 2903
    .restart local v9       #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;
    if-eqz v9, :cond_7

    .line 2904
    const/high16 v10, 0x1000

    and-int/2addr v10, v3

    const/high16 v11, 0x1000

    if-eq v10, v11, :cond_8

    .line 2905
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    .line 2906
    const/high16 v10, 0x1000

    or-int/2addr v3, v10

    .line 2908
    :cond_8
    iget-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2911
    .end local v6           #rawValue:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;
    :cond_9
    invoke-virtual {p1, v5}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 2915
    .end local v2           #length:I
    .end local v5           #oldLimit:I
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 2916
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    move-result-object v9

    .line 2917
    .local v9, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;
    if-eqz v9, :cond_0

    .line 2918
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x800

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2919
    iput-object v9, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    goto/16 :goto_0

    .line 2924
    .end local v6           #rawValue:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 2925
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    move-result-object v9

    .line 2926
    .local v9, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;
    if-eqz v9, :cond_0

    .line 2927
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x1000

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2928
    iput-object v9, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    goto/16 :goto_0

    .line 2933
    .end local v6           #rawValue:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;
    :sswitch_21
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x2000

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2934
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSourceIndex_:I

    goto/16 :goto_0

    .line 2938
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 2939
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    move-result-object v9

    .line 2940
    .local v9, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;
    if-eqz v9, :cond_0

    .line 2941
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, 0x4000

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2942
    iput-object v9, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    goto/16 :goto_0

    .line 2947
    .end local v6           #rawValue:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;
    :sswitch_23
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v11, -0x8000

    or-int/2addr v10, v11

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    .line 2948
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->numGaiaAccounts_:I

    goto/16 :goto_0

    .line 2952
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 2953
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    move-result-object v9

    .line 2954
    .local v9, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;
    if-eqz v9, :cond_0

    .line 2955
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    or-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    .line 2956
    iput-object v9, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    goto/16 :goto_0

    .line 2961
    .end local v6           #rawValue:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;
    :sswitch_25
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 2962
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    move-result-object v9

    .line 2963
    .local v9, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;
    if-eqz v9, :cond_0

    .line 2964
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    .line 2965
    iput-object v9, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    goto/16 :goto_0

    .line 2970
    .end local v6           #rawValue:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;
    :sswitch_26
    and-int/lit8 v10, v4, 0x10

    const/16 v11, 0x10

    if-eq v10, v11, :cond_a

    .line 2971
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    .line 2972
    or-int/lit8 v4, v4, 0x10

    .line 2974
    :cond_a
    iget-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    const/16 v11, 0x26

    sget-object v12, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, v12, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2979
    :sswitch_27
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    .line 2980
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2984
    :sswitch_28
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    .line 2985
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2989
    :sswitch_29
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 2990
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    move-result-object v9

    .line 2991
    .local v9, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;
    if-eqz v9, :cond_0

    .line 2992
    and-int/lit16 v10, v4, 0x80

    const/16 v11, 0x80

    if-eq v10, v11, :cond_b

    .line 2993
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    .line 2994
    or-int/lit16 v4, v4, 0x80

    .line 2996
    :cond_b
    iget-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3001
    .end local v6           #rawValue:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 3002
    .restart local v2       #length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v5

    .line 3003
    .restart local v5       #oldLimit:I
    :cond_c
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v10

    if-lez v10, :cond_e

    .line 3004
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 3005
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    move-result-object v9

    .line 3006
    .restart local v9       #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;
    if-eqz v9, :cond_c

    .line 3007
    and-int/lit16 v10, v4, 0x80

    const/16 v11, 0x80

    if-eq v10, v11, :cond_d

    .line 3008
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    .line 3009
    or-int/lit16 v4, v4, 0x80

    .line 3011
    :cond_d
    iget-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3014
    .end local v6           #rawValue:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;
    :cond_e
    invoke-virtual {p1, v5}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 3018
    .end local v2           #length:I
    .end local v5           #oldLimit:I
    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 3019
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    move-result-object v9

    .line 3020
    .local v9, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;
    if-eqz v9, :cond_0

    .line 3021
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    .line 3022
    iput-object v9, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    goto/16 :goto_0

    .line 3027
    .end local v6           #rawValue:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;
    :sswitch_2c
    const/4 v7, 0x0

    .line 3028
    .local v7, subBuilder:Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v10, v10, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_f

    .line 3029
    iget-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-virtual {v10}, Lcom/google/protos/MobileappsExtensions$TextModification;->toBuilder()Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    move-result-object v7

    .line 3031
    :cond_f
    sget-object v10, Lcom/google/protos/MobileappsExtensions$TextModification;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lcom/google/protos/MobileappsExtensions$TextModification;

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 3032
    if-eqz v7, :cond_10

    .line 3033
    iget-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-virtual {v7, v10}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification$Builder;

    .line 3034
    invoke-virtual {v7}, Lcom/google/protos/MobileappsExtensions$TextModification$Builder;->buildPartial()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 3036
    :cond_10
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    or-int/lit8 v10, v10, 0x20

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    goto/16 :goto_0

    .line 3040
    .end local v7           #subBuilder:Lcom/google/protos/MobileappsExtensions$TextModification$Builder;
    :sswitch_2d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 3041
    .restart local v6       #rawValue:I
    invoke-static {v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    move-result-object v9

    .line 3042
    .local v9, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
    if-eqz v9, :cond_0

    .line 3043
    iget v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    or-int/lit8 v10, v10, 0x40

    iput v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    .line 3044
    iput-object v9, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 3056
    .end local v6           #rawValue:I
    .end local v8           #tag:I
    .end local v9           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
    :cond_11
    and-int/lit16 v10, v3, 0x800

    const/16 v11, 0x800

    if-ne v10, v11, :cond_12

    .line 3057
    iget-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    .line 3059
    :cond_12
    const/high16 v10, 0x1000

    and-int/2addr v10, v3

    const/high16 v11, 0x1000

    if-ne v10, v11, :cond_13

    .line 3060
    iget-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    .line 3062
    :cond_13
    and-int/lit8 v10, v4, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_14

    .line 3063
    iget-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    .line 3065
    :cond_14
    and-int/lit16 v10, v4, 0x80

    const/16 v11, 0x80

    if-ne v10, v11, :cond_15

    .line 3066
    iget-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    .line 3068
    :cond_15
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->makeExtensionsImmutable()V

    .line 3070
    return-void

    .line 2710
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x63 -> :sswitch_c
        0x70 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x88 -> :sswitch_10
        0x90 -> :sswitch_11
        0x98 -> :sswitch_12
        0xa0 -> :sswitch_13
        0xaa -> :sswitch_14
        0xb0 -> :sswitch_15
        0xb8 -> :sswitch_16
        0xc2 -> :sswitch_17
        0xca -> :sswitch_18
        0xd0 -> :sswitch_19
        0xd8 -> :sswitch_1a
        0xe0 -> :sswitch_1b
        0xe8 -> :sswitch_1c
        0xf0 -> :sswitch_1d
        0xf2 -> :sswitch_1e
        0xf8 -> :sswitch_1f
        0x100 -> :sswitch_20
        0x108 -> :sswitch_21
        0x110 -> :sswitch_22
        0x118 -> :sswitch_23
        0x120 -> :sswitch_24
        0x128 -> :sswitch_25
        0x133 -> :sswitch_26
        0x15a -> :sswitch_27
        0x162 -> :sswitch_28
        0x168 -> :sswitch_29
        0x16a -> :sswitch_2a
        0x170 -> :sswitch_2b
        0x17a -> :sswitch_2c
        0x180 -> :sswitch_2d
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2680
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2685
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6043
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedIsInitialized:B

    .line 6186
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedSerializedSize:I

    .line 2687
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2688
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6043
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedIsInitialized:B

    .line 6186
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedSerializedSize:I

    .line 2688
    return-void
.end method

.method static synthetic access$4900(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistCursor_:I

    return p1
.end method

.method static synthetic access$5302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latitude_:I

    return p1
.end method

.method static synthetic access$5702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->longitude_:I

    return p1
.end method

.method static synthetic access$5802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->durationMs_:I

    return p1
.end method

.method static synthetic access$5902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->locationWasAvailable_:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$6200(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->homeMccMnc_:I

    return p1
.end method

.method static synthetic access$6602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->currentMccMnc_:I

    return p1
.end method

.method static synthetic access$6702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->rimVendorId_:I

    return p1
.end method

.method static synthetic access$6800(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    return-object p1
.end method

.method static synthetic access$7002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->signalStrength_:I

    return p1
.end method

.method static synthetic access$7100(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bandwidth_:I

    return p1
.end method

.method static synthetic access$7402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyFactor_:I

    return p1
.end method

.method static synthetic access$7602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyTimeout_:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    return-object p1
.end method

.method static synthetic access$8002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSourceIndex_:I

    return p1
.end method

.method static synthetic access$8102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    return-object p1
.end method

.method static synthetic access$8202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->numGaiaAccounts_:I

    return p1
.end method

.method static synthetic access$8302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    return-object p1
.end method

.method static synthetic access$8402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    return-object p1
.end method

.method static synthetic access$8500(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8700(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8702(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8800(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    return-object p1
.end method

.method static synthetic access$9002(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$TextModification;)Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object p1
.end method

.method static synthetic access$9102(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    return-object p1
.end method

.method static synthetic access$9202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    return p1
.end method

.method static synthetic access$9302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2680
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1

    .prologue
    .line 2692
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5999
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;

    .line 6000
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->KEYSTROKE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    .line 6001
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;

    .line 6002
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistCursor_:I

    .line 6003
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->HISTORY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    .line 6004
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;

    .line 6005
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;

    .line 6006
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latitude_:I

    .line 6007
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->longitude_:I

    .line 6008
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->durationMs_:I

    .line 6009
    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->locationWasAvailable_:Z

    .line 6010
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    .line 6011
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->timestamp_:J

    .line 6012
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;

    .line 6013
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 6014
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->NONE_FILTER:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    .line 6015
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->homeMccMnc_:I

    .line 6016
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->currentMccMnc_:I

    .line 6017
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->rimVendorId_:I

    .line 6018
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;

    .line 6019
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->BB_GREEN_KEY:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    .line 6020
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->signalStrength_:I

    .line 6021
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;

    .line 6022
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;

    .line 6023
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bandwidth_:I

    .line 6024
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 6025
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyFactor_:I

    .line 6026
    iput-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyTimeout_:Z

    .line 6027
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    .line 6028
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->SUGGESTION:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    .line 6029
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->DEFAULT_SOURCE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    .line 6030
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSourceIndex_:I

    .line 6031
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->PORTRAIT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    .line 6032
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->numGaiaAccounts_:I

    .line 6033
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->AUTO_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 6034
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->HOME_WIDGET:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    .line 6035
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    .line 6036
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;

    .line 6037
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 6038
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    .line 6039
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->HTTP:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    .line 6040
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$TextModification;->getDefaultInstance()Lcom/google/protos/MobileappsExtensions$TextModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    .line 6041
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->PHONE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    .line 6042
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 6437
    #calls: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->access$4700()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 6440
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;
    .locals 1

    .prologue
    .line 5327
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    return-object v0
.end method

.method public getActionTrigger()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;
    .locals 1

    .prologue
    .line 5865
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    return-object v0
.end method

.method public getBandwidth()I
    .locals 1

    .prologue
    .line 5752
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bandwidth_:I

    return v0
.end method

.method public getCellidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5438
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;

    .line 5439
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5440
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5442
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->cellid_:Ljava/lang/Object;

    .line 5445
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getCurrentMccMnc()I
    .locals 1

    .prologue
    .line 5613
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->currentMccMnc_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2680
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
    .locals 1

    .prologue
    .line 2696
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;

    return-object v0
.end method

.method public getDeviceOrientation()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;
    .locals 1

    .prologue
    .line 5835
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    return-object v0
.end method

.method public getDroplistCursor()I
    .locals 1

    .prologue
    .line 5370
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistCursor_:I

    return v0
.end method

.method public getDroplistTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5405
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;

    .line 5406
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5407
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5409
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistText_:Ljava/lang/Object;

    .line 5412
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getDroplistType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;
    .locals 1

    .prologue
    .line 5380
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    return-object v0
.end method

.method public getDurationMs()I
    .locals 1

    .prologue
    .line 5476
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->durationMs_:I

    return v0
.end method

.method public getGaiaBrowserUsage()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;
    .locals 1

    .prologue
    .line 5855
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    return-object v0
.end method

.method public getHomeMccMnc()I
    .locals 1

    .prologue
    .line 5603
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->homeMccMnc_:I

    return v0
.end method

.method public getLatencyFactor()I
    .locals 1

    .prologue
    .line 5772
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyFactor_:I

    return v0
.end method

.method public getLatencyTimeout()Z
    .locals 1

    .prologue
    .line 5782
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyTimeout_:Z

    return v0
.end method

.method public getLatencyType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    .locals 1

    .prologue
    .line 5762
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    return-object v0
.end method

.method public getLatitude()I
    .locals 1

    .prologue
    .line 5456
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latitude_:I

    return v0
.end method

.method public getLocationWasAvailable()Z
    .locals 1

    .prologue
    .line 5486
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->locationWasAvailable_:Z

    return v0
.end method

.method public getLongitude()I
    .locals 1

    .prologue
    .line 5466
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->longitude_:I

    return v0
.end method

.method public getNetworkProtocol()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;
    .locals 1

    .prologue
    .line 5975
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    return-object v0
.end method

.method public getNewCountryCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5701
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;

    .line 5702
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5703
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5705
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newCountryCode_:Ljava/lang/Object;

    .line 5708
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getNumGaiaAccounts()I
    .locals 1

    .prologue
    .line 5845
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->numGaiaAccounts_:I

    return v0
.end method

.method public getOldCountryCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5734
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;

    .line 5735
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5736
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5738
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->oldCountryCode_:Ljava/lang/Object;

    .line 5741
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getPhoneTopDisplay()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;
    .locals 1

    .prologue
    .line 5805
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    return-object v0
.end method

.method public getRimVendorId()I
    .locals 1

    .prologue
    .line 5623
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->rimVendorId_:I

    return v0
.end method

.method public getSafeSearchFilter()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;
    .locals 1

    .prologue
    .line 5593
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 6188
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedSerializedSize:I

    .line 6189
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 6375
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 6191
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 6192
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_1

    .line 6193
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getUserStudyIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6196
    :cond_1
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v8, :cond_2

    .line 6197
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->getNumber()I

    move-result v4

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6200
    :cond_2
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v9, :cond_3

    .line 6201
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6204
    :cond_3
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v10, :cond_4

    .line 6205
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistCursor_:I

    invoke-static {v9, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6208
    :cond_4
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v11, :cond_5

    .line 6209
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    invoke-virtual {v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6212
    :cond_5
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_6

    .line 6213
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDroplistTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6216
    :cond_6
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_7

    .line 6217
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getCellidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6220
    :cond_7
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_8

    .line 6221
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latitude_:I

    invoke-static {v10, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6224
    :cond_8
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_9

    .line 6225
    const/16 v4, 0x9

    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->longitude_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6228
    :cond_9
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_a

    .line 6229
    const/16 v4, 0xa

    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->durationMs_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6232
    :cond_a
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_b

    .line 6233
    const/16 v4, 0xb

    iget-boolean v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->locationWasAvailable_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 6236
    :cond_b
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 6237
    const/16 v5, 0xc

    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6236
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6240
    :cond_c
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x800

    const/16 v5, 0x800

    if-ne v4, v5, :cond_d

    .line 6241
    const/16 v4, 0xe

    iget-wide v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->timestamp_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 6244
    :cond_d
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_e

    .line 6245
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getUtteranceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6248
    :cond_e
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x2000

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_f

    .line 6249
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6252
    :cond_f
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v4, v4, 0x4000

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_10

    .line 6253
    const/16 v4, 0x11

    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    invoke-virtual {v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6256
    :cond_10
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const v5, 0x8000

    if-ne v4, v5, :cond_11

    .line 6257
    const/16 v4, 0x12

    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->homeMccMnc_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6260
    :cond_11
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    const/high16 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 6261
    const/16 v4, 0x13

    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->currentMccMnc_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6264
    :cond_12
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x2

    and-int/2addr v4, v5

    const/high16 v5, 0x2

    if-ne v4, v5, :cond_13

    .line 6265
    const/16 v4, 0x14

    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->rimVendorId_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6268
    :cond_13
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    const/high16 v5, 0x4

    if-ne v4, v5, :cond_14

    .line 6269
    const/16 v4, 0x15

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getTcpApnSettingBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6272
    :cond_14
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x8

    and-int/2addr v4, v5

    const/high16 v5, 0x8

    if-ne v4, v5, :cond_15

    .line 6273
    const/16 v4, 0x16

    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    invoke-virtual {v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6276
    :cond_15
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    const/high16 v5, 0x10

    if-ne v4, v5, :cond_16

    .line 6277
    const/16 v4, 0x17

    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->signalStrength_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6280
    :cond_16
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x20

    and-int/2addr v4, v5

    const/high16 v5, 0x20

    if-ne v4, v5, :cond_17

    .line 6281
    const/16 v4, 0x18

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getNewCountryCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6284
    :cond_17
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    const/high16 v5, 0x40

    if-ne v4, v5, :cond_18

    .line 6285
    const/16 v4, 0x19

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getOldCountryCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6288
    :cond_18
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x80

    and-int/2addr v4, v5

    const/high16 v5, 0x80

    if-ne v4, v5, :cond_19

    .line 6289
    const/16 v4, 0x1a

    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bandwidth_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6292
    :cond_19
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x100

    and-int/2addr v4, v5

    const/high16 v5, 0x100

    if-ne v4, v5, :cond_1a

    .line 6293
    const/16 v4, 0x1b

    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    invoke-virtual {v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6296
    :cond_1a
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x200

    and-int/2addr v4, v5

    const/high16 v5, 0x200

    if-ne v4, v5, :cond_1b

    .line 6297
    const/16 v4, 0x1c

    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyFactor_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6300
    :cond_1b
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x400

    and-int/2addr v4, v5

    const/high16 v5, 0x400

    if-ne v4, v5, :cond_1c

    .line 6301
    const/16 v4, 0x1d

    iget-boolean v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyTimeout_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 6305
    :cond_1c
    const/4 v0, 0x0

    .line 6306
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1d

    .line 6307
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    invoke-virtual {v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 6306
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6310
    :cond_1d
    add-int/2addr v2, v0

    .line 6311
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 6313
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x800

    and-int/2addr v4, v5

    const/high16 v5, 0x800

    if-ne v4, v5, :cond_1e

    .line 6314
    const/16 v4, 0x1f

    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    invoke-virtual {v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6317
    :cond_1e
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x1000

    and-int/2addr v4, v5

    const/high16 v5, 0x1000

    if-ne v4, v5, :cond_1f

    .line 6318
    const/16 v4, 0x20

    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    invoke-virtual {v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6321
    :cond_1f
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x2000

    and-int/2addr v4, v5

    const/high16 v5, 0x2000

    if-ne v4, v5, :cond_20

    .line 6322
    const/16 v4, 0x21

    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSourceIndex_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6325
    :cond_20
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, 0x4000

    and-int/2addr v4, v5

    const/high16 v5, 0x4000

    if-ne v4, v5, :cond_21

    .line 6326
    const/16 v4, 0x22

    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    invoke-virtual {v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6329
    :cond_21
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v5, -0x8000

    and-int/2addr v4, v5

    const/high16 v5, -0x8000

    if-ne v4, v5, :cond_22

    .line 6330
    const/16 v4, 0x23

    iget v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->numGaiaAccounts_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6333
    :cond_22
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_23

    .line 6334
    const/16 v4, 0x24

    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    invoke-virtual {v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6337
    :cond_23
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v8, :cond_24

    .line 6338
    const/16 v4, 0x25

    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    invoke-virtual {v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6341
    :cond_24
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_25

    .line 6342
    const/16 v5, 0x26

    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6341
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6345
    :cond_25
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v9, :cond_26

    .line 6346
    const/16 v4, 0x2b

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchActionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6349
    :cond_26
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v10, :cond_27

    .line 6350
    const/16 v4, 0x2c

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchActionSlotBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6354
    :cond_27
    const/4 v0, 0x0

    .line 6355
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_28

    .line 6356
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    invoke-virtual {v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 6355
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 6359
    :cond_28
    add-int/2addr v2, v0

    .line 6360
    iget-object v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 6362
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v11, :cond_29

    .line 6363
    const/16 v4, 0x2e

    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    invoke-virtual {v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6366
    :cond_29
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2a

    .line 6367
    const/16 v4, 0x2f

    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 6370
    :cond_2a
    iget v4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_2b

    .line 6371
    const/16 v4, 0x30

    iget-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    invoke-virtual {v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 6374
    :cond_2b
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedSerializedSize:I

    move v3, v2

    .line 6375
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public getSignalStrength()I
    .locals 1

    .prologue
    .line 5676
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->signalStrength_:I

    return v0
.end method

.method public getSuggestionSource()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;
    .locals 1

    .prologue
    .line 5815
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    return-object v0
.end method

.method public getSuggestionSourceIndex()I
    .locals 1

    .prologue
    .line 5825
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSourceIndex_:I

    return v0
.end method

.method public getTcpApnSettingBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5648
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;

    .line 5649
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5650
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5652
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->tcpApnSetting_:Ljava/lang/Object;

    .line 5655
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5352
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;

    .line 5353
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5354
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5356
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->text_:Ljava/lang/Object;

    .line 5359
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getTextModification()Lcom/google/protos/MobileappsExtensions$TextModification;
    .locals 1

    .prologue
    .line 5985
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 5517
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->timestamp_:J

    return-wide v0
.end method

.method public getUserStudyIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5309
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;

    .line 5310
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5311
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5313
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->userStudyId_:Ljava/lang/Object;

    .line 5316
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getUtteranceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5542
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;

    .line 5543
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5544
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5546
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->utteranceId_:Ljava/lang/Object;

    .line 5549
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getVoiceSearchActionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5911
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;

    .line 5912
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5913
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5915
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchAction_:Ljava/lang/Object;

    .line 5918
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getVoiceSearchActionSlotBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5944
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 5945
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5946
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5948
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchActionSlot_:Ljava/lang/Object;

    .line 5951
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getVoiceSearchButton()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;
    .locals 1

    .prologue
    .line 5666
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    return-object v0
.end method

.method public getVoiceSearchContactAddressType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;
    .locals 1

    .prologue
    .line 5995
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    return-object v0
.end method

.method public getVoiceSearchLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5575
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 5576
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5577
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5579
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchLanguage_:Ljava/lang/Object;

    .line 5582
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    .line 5324
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

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

.method public hasActionTrigger()Z
    .locals 2

    .prologue
    .line 5862
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

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

.method public hasBandwidth()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80

    .line 5749
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCellid()Z
    .locals 2

    .prologue
    .line 5420
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCurrentMccMnc()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 5610
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceOrientation()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4000

    .line 5832
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDroplistCursor()Z
    .locals 2

    .prologue
    .line 5367
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDroplistText()Z
    .locals 2

    .prologue
    .line 5387
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDroplistType()Z
    .locals 2

    .prologue
    .line 5377
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDurationMs()Z
    .locals 2

    .prologue
    .line 5473
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGaiaBrowserUsage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5852
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHomeMccMnc()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 5600
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatencyFactor()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200

    .line 5769
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatencyTimeout()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400

    .line 5779
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatencyType()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 5759
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatitude()Z
    .locals 2

    .prologue
    .line 5453
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocationWasAvailable()Z
    .locals 2

    .prologue
    .line 5483
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLongitude()Z
    .locals 2

    .prologue
    .line 5463
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNetworkProtocol()Z
    .locals 2

    .prologue
    .line 5972
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNewCountryCode()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 5683
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumGaiaAccounts()Z
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    .line 5842
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOldCountryCode()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 5716
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneTopDisplay()Z
    .locals 2

    .prologue
    const/high16 v1, 0x800

    .line 5802
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRimVendorId()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 5620
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSafeSearchFilter()Z
    .locals 2

    .prologue
    .line 5590
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSignalStrength()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10

    .line 5673
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSuggestionSource()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1000

    .line 5812
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSuggestionSourceIndex()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2000

    .line 5822
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTcpApnSetting()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 5630
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 5334
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextModification()Z
    .locals 2

    .prologue
    .line 5982
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 2

    .prologue
    .line 5514
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserStudyId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5291
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUtteranceId()Z
    .locals 2

    .prologue
    .line 5524
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceSearchAction()Z
    .locals 2

    .prologue
    .line 5893
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceSearchActionSlot()Z
    .locals 2

    .prologue
    .line 5926
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceSearchButton()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8

    .line 5663
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceSearchContactAddressType()Z
    .locals 2

    .prologue
    .line 5992
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoiceSearchLanguage()Z
    .locals 2

    .prologue
    .line 5557
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

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
    const/4 v1, 0x1

    .line 6045
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedIsInitialized:B

    .line 6046
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 6049
    :goto_0
    return v1

    .line 6046
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 6048
    :cond_1
    iput-byte v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2680
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 6438
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2680
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->toBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;
    .locals 1

    .prologue
    .line 6442
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->newBuilder(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 6381
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 6054
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getSerializedSize()I

    .line 6055
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_0

    .line 6056
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getUserStudyIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6058
    :cond_0
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_1

    .line 6059
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->action_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6061
    :cond_1
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v6, :cond_2

    .line 6062
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6064
    :cond_2
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v7, :cond_3

    .line 6065
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistCursor_:I

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6067
    :cond_3
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v8, :cond_4

    .line 6068
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->droplistType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DropListType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6070
    :cond_4
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 6071
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getDroplistTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6073
    :cond_5
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 6074
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getCellidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6076
    :cond_6
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 6077
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latitude_:I

    invoke-virtual {p1, v7, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6079
    :cond_7
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    .line 6080
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->longitude_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6082
    :cond_8
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9

    .line 6083
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->durationMs_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6085
    :cond_9
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_a

    .line 6086
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->locationWasAvailable_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6088
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 6089
    const/16 v2, 0xc

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->dropListItems_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 6088
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6091
    :cond_b
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 6092
    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->timestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6094
    :cond_c
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 6095
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getUtteranceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6097
    :cond_d
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 6098
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v8, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6100
    :cond_e
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 6101
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->safeSearchFilter_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SafeSearchFilterType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6103
    :cond_f
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_10

    .line 6104
    const/16 v1, 0x12

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->homeMccMnc_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6106
    :cond_10
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 6107
    const/16 v1, 0x13

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->currentMccMnc_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6109
    :cond_11
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 6110
    const/16 v1, 0x14

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->rimVendorId_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6112
    :cond_12
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_13

    .line 6113
    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getTcpApnSettingBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6115
    :cond_13
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    const/high16 v2, 0x8

    if-ne v1, v2, :cond_14

    .line 6116
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchButton_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchButtonType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6118
    :cond_14
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    const/high16 v2, 0x10

    if-ne v1, v2, :cond_15

    .line 6119
    const/16 v1, 0x17

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->signalStrength_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6121
    :cond_15
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_16

    .line 6122
    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getNewCountryCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6124
    :cond_16
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x40

    and-int/2addr v1, v2

    const/high16 v2, 0x40

    if-ne v1, v2, :cond_17

    .line 6125
    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getOldCountryCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6127
    :cond_17
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    const/high16 v2, 0x80

    if-ne v1, v2, :cond_18

    .line 6128
    const/16 v1, 0x1a

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bandwidth_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6130
    :cond_18
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x100

    and-int/2addr v1, v2

    const/high16 v2, 0x100

    if-ne v1, v2, :cond_19

    .line 6131
    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6133
    :cond_19
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x200

    and-int/2addr v1, v2

    const/high16 v2, 0x200

    if-ne v1, v2, :cond_1a

    .line 6134
    const/16 v1, 0x1c

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyFactor_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6136
    :cond_1a
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x400

    and-int/2addr v1, v2

    const/high16 v2, 0x400

    if-ne v1, v2, :cond_1b

    .line 6137
    const/16 v1, 0x1d

    iget-boolean v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencyTimeout_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6139
    :cond_1b
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 6140
    const/16 v2, 0x1e

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->featureTypes_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$FeatureType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6142
    :cond_1c
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x800

    and-int/2addr v1, v2

    const/high16 v2, 0x800

    if-ne v1, v2, :cond_1d

    .line 6143
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->phoneTopDisplay_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$PhoneTopDisplayType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6145
    :cond_1d
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x1000

    and-int/2addr v1, v2

    const/high16 v2, 0x1000

    if-ne v1, v2, :cond_1e

    .line 6146
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSource_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$SuggestionSource;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6148
    :cond_1e
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    const/high16 v2, 0x2000

    if-ne v1, v2, :cond_1f

    .line 6149
    const/16 v1, 0x21

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->suggestionSourceIndex_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6151
    :cond_1f
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    const/high16 v2, 0x4000

    if-ne v1, v2, :cond_20

    .line 6152
    const/16 v1, 0x22

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->deviceOrientation_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6154
    :cond_20
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField0_:I

    const/high16 v2, -0x8000

    and-int/2addr v1, v2

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_21

    .line 6155
    const/16 v1, 0x23

    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->numGaiaAccounts_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6157
    :cond_21
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_22

    .line 6158
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->gaiaBrowserUsage_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6160
    :cond_22
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_23

    .line 6161
    const/16 v1, 0x25

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionTrigger_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionTrigger;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6163
    :cond_23
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 6164
    const/16 v2, 0x26

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->latencies_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 6163
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6166
    :cond_24
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v6, :cond_25

    .line 6167
    const/16 v1, 0x2b

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchActionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6169
    :cond_25
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v7, :cond_26

    .line 6170
    const/16 v1, 0x2c

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->getVoiceSearchActionSlotBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6172
    :cond_26
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 6173
    const/16 v2, 0x2d

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->actionProperties_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$ActionProperty;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6172
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6175
    :cond_27
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v8, :cond_28

    .line 6176
    const/16 v1, 0x2e

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->networkProtocol_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$NetworkProtocol;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6178
    :cond_28
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_29

    .line 6179
    const/16 v1, 0x2f

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->textModification_:Lcom/google/protos/MobileappsExtensions$TextModification;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6181
    :cond_29
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->bitField1_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2a

    .line 6182
    const/16 v1, 0x30

    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;->voiceSearchContactAddressType_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$VoiceSearchContactAddressType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6184
    :cond_2a
    return-void
.end method
