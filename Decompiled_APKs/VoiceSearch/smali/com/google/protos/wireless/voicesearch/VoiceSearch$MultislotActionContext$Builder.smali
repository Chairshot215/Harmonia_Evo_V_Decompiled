.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContextOrBuilder;"
    }
.end annotation


# instance fields
.field private actionType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field private bitField0_:I

.field private selectedSlot_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11793
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11885
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->actionType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 11909
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->selectedSlot_:Ljava/lang/Object;

    .line 11794
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->maybeForceBuilderInitialization()V

    .line 11795
    return-void
.end method

.method static synthetic access$13900()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    .locals 1

    .prologue
    .line 11788
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    .locals 1

    .prologue
    .line 11800
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 11798
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11788
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
    .locals 2

    .prologue
    .line 11821
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    .line 11822
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11823
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11825
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11788
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
    .locals 5

    .prologue
    .line 11829
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 11830
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->bitField0_:I

    .line 11831
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 11832
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 11833
    or-int/lit8 v2, v2, 0x1

    .line 11835
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->actionType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->actionType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->access$14102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 11836
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 11837
    or-int/lit8 v2, v2, 0x2

    .line 11839
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->selectedSlot_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->selectedSlot_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->access$14202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11840
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->access$14302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;I)I

    .line 11841
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11788
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 11788
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    .locals 2

    .prologue
    .line 11813
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

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
    .line 11788
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 11788
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11788
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
    .locals 1

    .prologue
    .line 11817
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    return-object v0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11887
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->bitField0_:I

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
    .line 11858
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->hasActionType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11860
    const/4 v0, 0x0

    .line 11862
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
    .line 11788
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11788
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

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
    .line 11788
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11869
    const/4 v2, 0x0

    .line 11871
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11876
    if-eqz v2, :cond_0

    .line 11877
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    .line 11880
    :cond_0
    return-object p0

    .line 11872
    :catch_0
    move-exception v1

    .line 11873
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-object v2, v0

    .line 11874
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11876
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 11877
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 11845
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 11854
    :cond_0
    :goto_0
    return-object p0

    .line 11846
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11847
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->getActionType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->setActionType(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    .line 11849
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->hasSelectedSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11850
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->bitField0_:I

    .line 11851
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->selectedSlot_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->access$14200(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->selectedSlot_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setActionType(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11893
    if-nez p1, :cond_0

    .line 11894
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11896
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->bitField0_:I

    .line 11897
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->actionType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 11899
    return-object p0
.end method

.method public setSelectedSlot(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11936
    if-nez p1, :cond_0

    .line 11937
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11939
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->bitField0_:I

    .line 11940
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->selectedSlot_:Ljava/lang/Object;

    .line 11942
    return-object p0
.end method
