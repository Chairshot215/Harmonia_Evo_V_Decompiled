.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private phoneNumberType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5783
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5883
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->name_:Ljava/lang/Object;

    .line 5936
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->phoneNumberType_:Ljava/util/List;

    .line 5784
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->maybeForceBuilderInitialization()V

    .line 5785
    return-void
.end method

.method static synthetic access$6500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;
    .locals 1

    .prologue
    .line 5778
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;
    .locals 1

    .prologue
    .line 5790
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePhoneNumberTypeIsMutable()V
    .locals 2

    .prologue
    .line 5939
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 5940
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->phoneNumberType_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->phoneNumberType_:Ljava/util/List;

    .line 5941
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->bitField0_:I

    .line 5943
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 5788
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5778
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
    .locals 2

    .prologue
    .line 5811
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v0

    .line 5812
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5813
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5815
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5778
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
    .locals 5

    .prologue
    .line 5819
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 5820
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->bitField0_:I

    .line 5821
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5822
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5823
    or-int/lit8 v2, v2, 0x1

    .line 5825
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->access$6702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5826
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5827
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->phoneNumberType_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->phoneNumberType_:Ljava/util/List;

    .line 5828
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->bitField0_:I

    .line 5830
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->phoneNumberType_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->access$6802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;Ljava/util/List;)Ljava/util/List;

    .line 5831
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->access$6902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;I)I

    .line 5832
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5778
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5778
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;
    .locals 2

    .prologue
    .line 5803
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

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
    .line 5778
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 5778
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5778
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
    .locals 1

    .prologue
    .line 5807
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5885
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5856
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->hasName()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5858
    const/4 v0, 0x0

    .line 5860
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

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
    .line 5778
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5778
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

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
    .line 5778
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5867
    const/4 v2, 0x0

    .line 5869
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5874
    if-eqz v2, :cond_0

    .line 5875
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    .line 5878
    :cond_0
    return-object p0

    .line 5870
    :catch_0
    move-exception v1

    .line 5871
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-object v2, v0

    .line 5872
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5874
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 5875
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 5836
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5852
    :cond_0
    :goto_0
    return-object p0

    .line 5837
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5838
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->bitField0_:I

    .line 5839
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->access$6700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->name_:Ljava/lang/Object;

    .line 5842
    :cond_2
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->access$6800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5843
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->phoneNumberType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5844
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->access$6800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->phoneNumberType_:Ljava/util/List;

    .line 5845
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->bitField0_:I

    goto :goto_0

    .line 5847
    :cond_3
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->ensurePhoneNumberTypeIsMutable()V

    .line 5848
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact$Builder;->phoneNumberType_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->phoneNumberType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->access$6800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
