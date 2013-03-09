.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayUrl_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14627
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 14781
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    .line 14834
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14628
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->maybeForceBuilderInitialization()V

    .line 14629
    return-void
.end method

.method static synthetic access$17100()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1

    .prologue
    .line 14622
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1

    .prologue
    .line 14634
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 14632
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 2

    .prologue
    .line 14657
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    .line 14658
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14659
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14661
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 5

    .prologue
    .line 14665
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 14666
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14667
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14668
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 14669
    or-int/lit8 v2, v2, 0x1

    .line 14671
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->access$17302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14672
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 14673
    or-int/lit8 v2, v2, 0x2

    .line 14675
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->access$17402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14676
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 14677
    or-int/lit8 v2, v2, 0x4

    .line 14679
    :cond_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->access$17502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14680
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->access$17602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;I)I

    .line 14681
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 2

    .prologue
    .line 14649
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

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
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1

    .prologue
    .line 14653
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 14705
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
    .line 14622
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14622
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

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
    .line 14622
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14712
    const/4 v2, 0x0

    .line 14714
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14719
    if-eqz v2, :cond_0

    .line 14720
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    .line 14723
    :cond_0
    return-object p0

    .line 14715
    :catch_0
    move-exception v1

    .line 14716
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-object v2, v0

    .line 14717
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14719
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 14720
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 14685
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 14701
    :cond_0
    :goto_0
    return-object p0

    .line 14686
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14687
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14688
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->access$17300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 14691
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->hasDisplayUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14692
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14693
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->displayUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->access$17400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    .line 14696
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14697
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14698
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->access$17500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDisplayUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14808
    if-nez p1, :cond_0

    .line 14809
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14811
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14812
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    .line 14814
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14861
    if-nez p1, :cond_0

    .line 14862
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14864
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14865
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14867
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14755
    if-nez p1, :cond_0

    .line 14756
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14758
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14759
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 14761
    return-object p0
.end method
