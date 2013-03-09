.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretationOrBuilder;"
    }
.end annotation


# instance fields
.field private actionLiteral_:Ljava/lang/Object;

.field private action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field private bitField0_:I

.field private businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

.field private contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

.field private goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

.field private intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

.field private mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

.field private multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

.field private phoneNumber_:Ljava/lang/Object;

.field private query_:Ljava/lang/Object;

.field private sentence_:Ljava/lang/Object;

.field private websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1085
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 1109
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->actionLiteral_:Ljava/lang/Object;

    .line 1162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->query_:Ljava/lang/Object;

    .line 1215
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->sentence_:Ljava/lang/Object;

    .line 1268
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    .line 1311
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    .line 1354
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 1407
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    .line 1450
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    .line 1493
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    .line 1536
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    .line 1579
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    .line 866
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->maybeForceBuilderInitialization()V

    .line 867
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 1

    .prologue
    .line 860
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 1

    .prologue
    .line 872
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 870
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 2

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    .line 914
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 915
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 917
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 5

    .prologue
    .line 921
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 922
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 923
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 924
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 925
    or-int/lit8 v2, v2, 0x1

    .line 927
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 928
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 929
    or-int/lit8 v2, v2, 0x2

    .line 931
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->actionLiteral_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 933
    or-int/lit8 v2, v2, 0x4

    .line 935
    :cond_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->query_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 937
    or-int/lit8 v2, v2, 0x8

    .line 939
    :cond_3
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->sentence_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 941
    or-int/lit8 v2, v2, 0x10

    .line 943
    :cond_4
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    .line 944
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 945
    or-int/lit8 v2, v2, 0x20

    .line 947
    :cond_5
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    .line 948
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 949
    or-int/lit8 v2, v2, 0x40

    .line 951
    :cond_6
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 953
    or-int/lit16 v2, v2, 0x80

    .line 955
    :cond_7
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$1002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    .line 956
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 957
    or-int/lit16 v2, v2, 0x100

    .line 959
    :cond_8
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$1102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    .line 960
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 961
    or-int/lit16 v2, v2, 0x200

    .line 963
    :cond_9
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$1202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    .line 964
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 965
    or-int/lit16 v2, v2, 0x400

    .line 967
    :cond_a
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$1302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    .line 968
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 969
    or-int/lit16 v2, v2, 0x800

    .line 971
    :cond_b
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$1402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    .line 972
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$1502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;I)I

    .line 973
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 2

    .prologue
    .line 905
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

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
    .line 860
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBusinessInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    return-object v0
.end method

.method public getContactsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 860
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1

    .prologue
    .line 909
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    return-object v0
.end method

.method public getMapsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    return-object v0
.end method

.method public getMultislotActionInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    return-object v0
.end method

.method public getWebsearchInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    return-object v0
.end method

.method public hasBusinessInfo()Z
    .locals 2

    .prologue
    .line 1495
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

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

.method public hasContactsInfo()Z
    .locals 2

    .prologue
    .line 1313
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

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

.method public hasIntent()Z
    .locals 2

    .prologue
    .line 1409
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

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

.method public hasMapsInfo()Z
    .locals 2

    .prologue
    .line 1270
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

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

.method public hasMultislotActionInfo()Z
    .locals 2

    .prologue
    .line 1538
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

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

.method public hasWebsearchInfo()Z
    .locals 2

    .prologue
    .line 1452
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1026
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->hasMapsInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1027
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->getMapsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return v0

    .line 1032
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->hasContactsInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1033
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->getContactsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1038
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->hasIntent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1039
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->getIntent()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->hasWebsearchInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1045
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->getWebsearchInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    :cond_4
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->hasBusinessInfo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1051
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->getBusinessInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    :cond_5
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->hasMultislotActionInfo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1057
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->getMultislotActionInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1062
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeBusinessInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1517
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    .line 1525
    :goto_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 1526
    return-object p0

    .line 1522
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->businessInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    goto :goto_0
.end method

.method public mergeContactsInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1335
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    .line 1343
    :goto_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 1344
    return-object p0

    .line 1340
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

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
    .line 860
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 860
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

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
    .line 860
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1069
    const/4 v2, 0x0

    .line 1071
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    if-eqz v2, :cond_0

    .line 1077
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 1080
    :cond_0
    return-object p0

    .line 1072
    :catch_0
    move-exception v1

    .line 1073
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-object v2, v0

    .line 1074
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1076
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1077
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 977
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-object p0

    .line 978
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 979
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 981
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasActionLiteral()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 982
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 983
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->actionLiteral_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->actionLiteral_:Ljava/lang/Object;

    .line 986
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 987
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 988
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->query_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->query_:Ljava/lang/Object;

    .line 991
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasSentence()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 992
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 993
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->sentence_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->sentence_:Ljava/lang/Object;

    .line 996
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasMapsInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 997
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getMapsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeMapsInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 999
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasContactsInfo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1000
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getContactsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeContactsInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 1002
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1003
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 1004
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->phoneNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->access$900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 1007
    :cond_8
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasIntent()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1008
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getIntent()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeIntent(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 1010
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasWebsearchInfo()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1011
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getWebsearchInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeWebsearchInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 1013
    :cond_a
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasBusinessInfo()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1014
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getBusinessInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeBusinessInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 1016
    :cond_b
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasMultislotActionInfo()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1017
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getMultislotActionInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeMultislotActionInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 1019
    :cond_c
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasGoToInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getGoToInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mergeGoToInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    goto/16 :goto_0
.end method

.method public mergeGoToInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1603
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    .line 1611
    :goto_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 1612
    return-object p0

    .line 1608
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    goto :goto_0
.end method

.method public mergeIntent(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1431
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    .line 1439
    :goto_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 1440
    return-object p0

    .line 1436
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->intent_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Intent;

    goto :goto_0
.end method

.method public mergeMapsInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1292
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    .line 1300
    :goto_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 1301
    return-object p0

    .line 1297
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->mapsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    goto :goto_0
.end method

.method public mergeMultislotActionInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1560
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    .line 1568
    :goto_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 1569
    return-object p0

    .line 1565
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    goto :goto_0
.end method

.method public mergeWebsearchInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1474
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    .line 1482
    :goto_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 1483
    return-object p0

    .line 1479
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->websearchInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    goto :goto_0
.end method

.method public setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1093
    if-nez p1, :cond_0

    .line 1094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1096
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 1097
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 1099
    return-object p0
.end method

.method public setContactsInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 1329
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->contactsInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    .line 1331
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 1332
    return-object p0
.end method

.method public setGoToInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 1597
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->goToInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    .line 1599
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 1600
    return-object p0
.end method

.method public setMultislotActionInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 1554
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->multislotActionInfo_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    .line 1556
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 1557
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1189
    if-nez p1, :cond_0

    .line 1190
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1192
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->bitField0_:I

    .line 1193
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->query_:Ljava/lang/Object;

    .line 1195
    return-object p0
.end method
