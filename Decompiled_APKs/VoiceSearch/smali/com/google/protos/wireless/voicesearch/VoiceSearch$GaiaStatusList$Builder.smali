.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusListOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private gaiaStatus_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7838
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7921
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    .line 7839
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->maybeForceBuilderInitialization()V

    .line 7840
    return-void
.end method

.method static synthetic access$9100()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1

    .prologue
    .line 7833
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 1

    .prologue
    .line 7845
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;-><init>()V

    return-object v0
.end method

.method private ensureGaiaStatusIsMutable()V
    .locals 2

    .prologue
    .line 7924
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 7925
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    .line 7926
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    .line 7928
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 7843
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    .locals 2

    .prologue
    .line 7864
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    .line 7865
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7866
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 7868
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    .locals 4

    .prologue
    .line 7872
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 7873
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    .line 7874
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 7875
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    .line 7876
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    .line 7878
    :cond_0
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->access$9302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;Ljava/util/List;)Ljava/util/List;

    .line 7879
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 2

    .prologue
    .line 7856
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

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
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7833
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    .locals 1

    .prologue
    .line 7860
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7898
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
    .line 7833
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7833
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

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
    .line 7833
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7905
    const/4 v2, 0x0

    .line 7907
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7912
    if-eqz v2, :cond_0

    .line 7913
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    .line 7916
    :cond_0
    return-object p0

    .line 7908
    :catch_0
    move-exception v1

    .line 7909
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-object v2, v0

    .line 7910
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7912
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 7913
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 7883
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 7894
    :cond_0
    :goto_0
    return-object p0

    .line 7884
    :cond_1
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->access$9300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7885
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7886
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->access$9300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    .line 7887
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->bitField0_:I

    goto :goto_0

    .line 7889
    :cond_2
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->ensureGaiaStatusIsMutable()V

    .line 7890
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList$Builder;->gaiaStatus_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatus_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->access$9300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
