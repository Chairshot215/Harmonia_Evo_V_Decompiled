.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValueOrBuilder;"
    }
.end annotation


# instance fields
.field private alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

.field private bitField0_:I

.field private contactsListValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private contactsWithAltsValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private intValue_:I

.field private stringValue_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13241
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 13390
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 13443
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsListValue_:Ljava/util/List;

    .line 13532
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsWithAltsValue_:Ljava/util/List;

    .line 13642
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 13242
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->maybeForceBuilderInitialization()V

    .line 13243
    return-void
.end method

.method static synthetic access$15500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    .locals 1

    .prologue
    .line 13236
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    .locals 1

    .prologue
    .line 13248
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;-><init>()V

    return-object v0
.end method

.method private ensureContactsListValueIsMutable()V
    .locals 2

    .prologue
    .line 13446
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 13447
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsListValue_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsListValue_:Ljava/util/List;

    .line 13448
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    .line 13450
    :cond_0
    return-void
.end method

.method private ensureContactsWithAltsValueIsMutable()V
    .locals 2

    .prologue
    .line 13535
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 13536
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsWithAltsValue_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsWithAltsValue_:Ljava/util/List;

    .line 13537
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    .line 13539
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 13246
    return-void
.end method


# virtual methods
.method public addContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 13499
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->ensureContactsListValueIsMutable()V

    .line 13500
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsListValue_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13502
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13236
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 2

    .prologue
    .line 13275
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v0

    .line 13276
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13277
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13279
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13236
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 5

    .prologue
    .line 13283
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 13284
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    .line 13285
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 13286
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 13287
    or-int/lit8 v2, v2, 0x1

    .line 13289
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->stringValue_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->stringValue_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->access$15702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13290
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 13291
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsListValue_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsListValue_:Ljava/util/List;

    .line 13292
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    .line 13294
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsListValue_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->access$15802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;Ljava/util/List;)Ljava/util/List;

    .line 13295
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 13296
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsWithAltsValue_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsWithAltsValue_:Ljava/util/List;

    .line 13297
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    .line 13299
    :cond_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsWithAltsValue_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->access$15902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;Ljava/util/List;)Ljava/util/List;

    .line 13300
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 13301
    or-int/lit8 v2, v2, 0x2

    .line 13303
    :cond_3
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->intValue_:I

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->intValue_:I
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->access$16002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;I)I

    .line 13304
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 13305
    or-int/lit8 v2, v2, 0x4

    .line 13307
    :cond_4
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->access$16102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 13308
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->access$16202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;I)I

    .line 13309
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 13236
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 13236
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    .locals 2

    .prologue
    .line 13267
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

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
    .line 13236
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 13647
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0
.end method

.method public getContactsListValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 13459
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsListValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    return-object v0
.end method

.method public getContactsListValueCount()I
    .locals 1

    .prologue
    .line 13456
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsListValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContactsWithAltsValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 13548
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsWithAltsValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    return-object v0
.end method

.method public getContactsWithAltsValueCount()I
    .locals 1

    .prologue
    .line 13545
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsWithAltsValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 13236
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13236
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .locals 1

    .prologue
    .line 13271
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v0

    return-object v0
.end method

.method public hasAlternates()Z
    .locals 2

    .prologue
    .line 13644
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 13349
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->getContactsListValueCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 13350
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->getContactsListValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 13367
    :cond_0
    :goto_1
    return v1

    .line 13349
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13355
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->getContactsWithAltsValueCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 13356
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->getContactsWithAltsValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13355
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13361
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->hasAlternates()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13362
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13367
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public mergeAlternates(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 13666
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13668
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->newBuilder(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 13674
    :goto_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    .line 13675
    return-object p0

    .line 13671
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

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
    .line 13236
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13236
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

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
    .line 13236
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13374
    const/4 v2, 0x0

    .line 13376
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13381
    if-eqz v2, :cond_0

    .line 13382
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    .line 13385
    :cond_0
    return-object p0

    .line 13377
    :catch_0
    move-exception v1

    .line 13378
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-object v2, v0

    .line 13379
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13381
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 13382
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 13313
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 13345
    :cond_0
    :goto_0
    return-object p0

    .line 13314
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13315
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    .line 13316
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->stringValue_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->access$15700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 13319
    :cond_2
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->access$15800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13320
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsListValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13321
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->access$15800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsListValue_:Ljava/util/List;

    .line 13322
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    .line 13329
    :cond_3
    :goto_1
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->access$15900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13330
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsWithAltsValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13331
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->access$15900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsWithAltsValue_:Ljava/util/List;

    .line 13332
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    .line 13339
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->hasIntValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13340
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->setIntValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    .line 13342
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->hasAlternates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13343
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->mergeAlternates(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    goto :goto_0

    .line 13324
    :cond_6
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->ensureContactsListValueIsMutable()V

    .line 13325
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsListValue_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsListValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->access$15800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 13334
    :cond_7
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->ensureContactsWithAltsValueIsMutable()V

    .line 13335
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->contactsWithAltsValue_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->contactsWithAltsValue_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->access$15900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public setIntValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 13629
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    .line 13630
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->intValue_:I

    .line 13632
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 13417
    if-nez p1, :cond_0

    .line 13418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13420
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->bitField0_:I

    .line 13421
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->stringValue_:Ljava/lang/Object;

    .line 13423
    return-object p0
.end method
